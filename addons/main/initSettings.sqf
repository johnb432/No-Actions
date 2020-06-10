#include "script_component.hpp"

#define NO_ACTION_SETTING(NAME, CATEGORY, DEFAULT)\
[\
    'no_actions_main_##NAME',\
    "CHECKBOX",\
    [\
        localize 'STR_no_actions_##NAME',\
        localize 'STR_no_actions_##NAME##_desc'\
    ],\
    ["No Actions", CATEGORY],\
    DEFAULT,\
    2,\
    {\
        profileNamespace setVariable ['no_actions_main_show##NAME', parseNumber !_this];\
        saveProfileNamespace;\
    },\
    true\
] call CBA_fnc_addSetting

NO_ACTION_SETTING(DisAssemble, "Static Weapons", false);
NO_ACTION_SETTING(EngineOff, "Vehicles", false);
NO_ACTION_SETTING(EngineOn, "Vehicles", false);
NO_ACTION_SETTING(Eject, "Vehicles", false);
NO_ACTION_SETTING(GetOut, "Vehicles", false);
NO_ACTION_SETTING(LightOff, "Vehicles", false);
NO_ACTION_SETTING(LightOn, "Vehicles", false);
NO_ACTION_SETTING(LoadEmptyMagazine, "Weapons",  false);
NO_ACTION_SETTING(LoadOtherMagazine, "Weapons", false);
NO_ACTION_SETTING(Rearm, "Vehicles", false);
NO_ACTION_SETTING(TakeDropWeapon, "Weapons", false);
NO_ACTION_SETTING(TakeWeapon, "Weapons", false);
NO_ACTION_SETTING(TurnIn, "Vehicles", false);
NO_ACTION_SETTING(TurnOut, "Vehicles", false);
NO_ACTION_SETTING(UnloadUnconsciousUnits, "Vehicles", false);