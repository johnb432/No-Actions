#include "script_component.hpp"

ADDON = false;

// CBA Settings
#include "initSettings.sqf"

// Removes addition of inventory action by ACE when unit is unconscious; Requires mission restart to remove the removal
if (GVAR(Gear) && {isClass (configFile >> "CfgPatches" >> "ace_medical_status")}) then {
    ["CAManBase", "init", {
        [{
            {
                if (((_this actionParams _x) select 7) isEqualTo "_target getVariable ['ACE_isUnconscious',false] && {alive _target}") exitWith {
                    _this removeAction _x;
                };
            } forEach actionIDs _this;
        }, _this select 0, 0.5] call CBA_fnc_waitAndExecute;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
};

ADDON = true;
