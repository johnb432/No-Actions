#include "script_component.hpp"

ADDON = false;

// CBA Settings
#include "initSettings.sqf"

// Removes addition of inventory action by ACE when unit is unconscious; Requires mission restart to remove the removal
if (GVAR(Gear) && {!isNil "ace_medical_status"}) then {
    ["CAManBase", "initPost", {
        params ["_unit"];

        {
            if (((_unit actionParams _x) select 7) isEqualTo "_target getVariable ['ACE_isUnconscious',false] && {alive _target}") exitWith {
                _unit removeAction _x;
            };
        } forEach actionIDs _unit;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
};

ADDON = true;
