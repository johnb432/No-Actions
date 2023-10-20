#include "script_component.hpp"

ADDON = false;

#include "XEH_PREP.hpp"

// CBA Settings
#include "initSettings.sqf"

// Strings must exactly be like this (no extra spaces, tabs or newlines)
GVAR(actions) = ["
    (_target isNotEqualTo ACE_player) &&
    {(lifeState _target) isEqualTo ""INCAPACITATED""}
", "
    private _backpackContainer = backpackContainer _target;
    private _backpackConfig = configOf _backpackContainer;

    (_target isNotEqualTo ACE_player) &&
    {!((lifeState _target) in [""HEALTHY"", ""INJURED"", ""INCAPACITATED""])} &&
    {!isNull _backpackContainer} &&
    {!lockedInventory _backpackContainer} &&
    {maxLoad _backpackContainer > 0} &&
    {getNumber (_backpackConfig >> ""disableInventory"") != 1} &&
    {_target setUserActionText [_actionId, format [localize ""STR_ACTION_OPEN_BAG"", getText (_backpackConfig >> ""displayName"")]]; true}
"];

// Removes addition of inventory action by ACE when unit is unconscious; Requires mission restart to remove the removal
if (GVAR(Gear) && {isClass (configFile >> "CfgPatches" >> "ace_medical_status")}) then {
    ["CAManBase", "initPost", {
        params ["_unit"];

        {
            if (((_unit actionParams _x) select 7) in GVAR(actions)) then {
                _unit removeAction _x;
            };
        } forEach actionIDs _unit;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
} else {
    GVAR(actions) = nil;
};

ADDON = true;
