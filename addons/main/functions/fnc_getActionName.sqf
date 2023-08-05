#include "script_component.hpp"

/*
 * Author: johnb43
 * Returns action name of an action in CfgActions.
 *
 * Arguments:
 * 0: Action <STRING>
 * 1: Is description <BOOL>
 *
 * Return Value:
 * Action name <STRING>
 *
 * Example:
 * "Rearm" call no_actions_main_fnc_getActionName;
 *
 * Public: No
 */

params ["_action", "_isDescription"];

// Exceptions
if (_action in ["LoadEmptyMagazine", "LoadOtherMagazine"]) exitWith {
    private _text = QUOTE(DOUBLES(STR,ADDON)) + "_"  + _action;

    if (_isDescription) then {
        _text = _text + "_desc";
    };

    localize _text
};

private _text = getText (configFile >> "CfgActions" >> _action >> "text");

private _index = -1;

// Remove all "%"
while {_index = _text find "%"; _index != -1} do {
    _text = (_text select [0, _index]) + (_text select [_index + 2]);
};

trim _text
