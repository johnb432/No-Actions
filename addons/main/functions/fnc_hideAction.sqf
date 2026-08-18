#include "..\script_component.hpp"
/*
 * Author: johnb43
 * Hides actions.
 *
 * Arguments:
 * 0: Action <NUMBER>
 * 1: Hide <BOOL>
 * 2: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [111, true] call no_actions_main_fnc_hideAction;
 *
 * Public: No
 */

params ["_action", "_hide", ["_unit", cameraOn]];

private _key = hashValue _unit;
private _hiddenActions = GVAR(hiddenActions) getOrDefault [_key, createHashMap, true];
private _hidden = _action in _hiddenActions;

// Only change if there's a difference between action to undertake and current state
// This should allow for some 'cooperative' mods that use hideActions
if (_hide && !_hidden) then {
    hideActions [true, [_action]];

    _hiddenActions set [_action, nil];

    // Remove from hashmap if unit is deleted
    if (_unit getVariable [QGVAR(deleteEhID), -1] != -1) exitWith {};

    _unit setVariable [QGVAR(deleteEhID),
        _unit addEventHandler ["Deleted", {
            params ["_unit"];

            GVAR(hiddenActions) deleteAt (hashValue _unit);
        }]
    ];
} else {
    if (!_hide && _hidden) then {
        hideActions [false, [_action]];

        _hiddenActions deleteAt _action;
    };
};
