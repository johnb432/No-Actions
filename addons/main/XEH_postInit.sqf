#include "script_component.hpp"

addMissionEventHandler ["PlayerViewChanged", {
    params ["", "", "", "_oldCameraOn", "_newCameraOn"];

    if (_oldCameraOn == _newCameraOn) exitWith {};

    [{
        {
            [_y, missionNamespace getVariable [format [QGVAR(%1), _x], false], _this] call FUNC(hideAction);
        } forEach GVAR(allActions);
    }, _newCameraOn] call CBA_fnc_execNextFrame;
}];
