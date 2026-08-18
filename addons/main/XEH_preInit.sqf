#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

GVAR(hiddenActions) = createHashMap;
GVAR(allActions) = createHashMap;

// CBA Settings
#include "initSettings.inc.sqf"

// Strings must exactly be like this (no extra spaces, tabs or newlines)
GVAR(inventoryAction) = trim "
    (_target isNotEqualTo ACE_player) &&
    {(lifeState _target) isEqualTo ""INCAPACITATED""}
";
GVAR(backpackAction) = trim "
    private _backpackContainer = backpackContainer _target;
    private _backpackConfig = configOf _backpackContainer;

    (_target isNotEqualTo ACE_player) &&
    {!((lifeState _target) in [""HEALTHY"", ""INJURED"", ""INCAPACITATED""])} &&
    {!isNull _backpackContainer} &&
    {!lockedInventory _backpackContainer} &&
    {maxLoad _backpackContainer > 0} &&
    {getNumber (_backpackConfig >> ""disableInventory"") != 1} &&
    {!(_target isKindOf ""ace_dragging_clone"")} &&
    {_target setUserActionText [_actionId, format [localize ""STR_ACTION_OPEN_BAG"", getText (_backpackConfig >> ""displayName"")]]; true}
";

// Removes addition of inventory action by ACE when unit is unconscious; Requires mission restart to remove the removal
if (isClass (configFile >> "CfgPatches" >> "ace_medical_status")) then {
    #define GEAR_ACTION_ENUM 111
    #define OPENBAG_ACTION_ENUM 120

    ["CAManBase", "initPost", {
        params ["_unit"];

        {
            private _action = trim ((_unit actionParams _x) select 7);

            if (_action == GVAR(inventoryAction)) then {
                _unit removeAction _x;

                // Gear Action - For Unconscious Units
                private _id = _unit addAction ["", {
                    params ["_target", "_caller"];

                    _caller action ["Gear", _target];
                }, nil, 5.1, true, true, "gear", toString {
                    (_target isNotEqualTo ACE_player) &&
                    {(lifeState _target) isEqualTo "INCAPACITATED"} &&
                    {(hiddenActions [GEAR_ACTION_ENUM]) isEqualTo []}
                }, 2];

                _unit setUserActionText [_id, localize "STR_ACTION_GEAR", "<img image='\A3\ui_f\data\igui\cfg\actions\gear_ca.paa' size='2.5' shadow=2 />"];
            } else {
                if (_action == GVAR(backpackAction)) then {
                    _unit removeAction _x;

                    // Open Bag Action - For Dead Units
                    _unit addAction ["OpenBag", {
                        params ["_target", "_caller"];

                        _caller action ["OpenBag", _target];
                    }, nil, 5.2, true, true, "", toString {
                        private _backpackContainer = backpackContainer _target;
                        private _backpackConfig = configOf _backpackContainer;

                        (_target isNotEqualTo ACE_player) &&
                        {!((lifeState _target) in ["HEALTHY", "INJURED", "INCAPACITATED"])} &&
                        {(hiddenActions [OPENBAG_ACTION_ENUM]) isEqualTo []} &&
                        {!isNull _backpackContainer} &&
                        {!lockedInventory _backpackContainer} &&
                        {maxLoad _backpackContainer > 0} &&
                        {getNumber (_backpackConfig >> "disableInventory") != 1} &&
                        {!(_target isKindOf "ace_dragging_clone")} &&
                        {_target setUserActionText [_actionId, format [localize "STR_ACTION_OPEN_BAG", getText (_backpackConfig >> "displayName")]]; true}
                    }, 2];
                };
            };
        } forEach actionIDs _unit;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
} else {
    GVAR(inventoryAction) = nil;
    GVAR(backpackAction) = nil;
};

ADDON = true;
