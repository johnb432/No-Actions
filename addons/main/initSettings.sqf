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
    0,\
    {\
        profileNamespace setVariable ['no_actions_main_show##NAME', parseNumber !_this];\
        saveProfileNamespace;\
    },\
    true\
] call CBA_fnc_addSetting

NO_ACTION_SETTING(CollisionLightOff, "Vehicles", false);
NO_ACTION_SETTING(CollisionLightOn, "Vehicles", false);
NO_ACTION_SETTING(DisAssemble, "Static Weapons", false);
NO_ACTION_SETTING(EngineOff, "Vehicles", false);
NO_ACTION_SETTING(EngineOn, "Vehicles", false);
NO_ACTION_SETTING(Eject, "Vehicles", false);
NO_ACTION_SETTING(GetOut, "Vehicles", false);
NO_ACTION_SETTING(Gear, "General", false);
NO_ACTION_SETTING(LightOff, "Vehicles", false);
NO_ACTION_SETTING(LightOn, "Vehicles", false);
NO_ACTION_SETTING(LoadEmptyMagazine, "Weapons",  false);
NO_ACTION_SETTING(LoadOtherMagazine, "Weapons", false);
NO_ACTION_SETTING(ManualFire, "Vehicles", false);
NO_ACTION_SETTING(OpenBag, "General", false);
NO_ACTION_SETTING(Rearm, "Vehicles", false);
NO_ACTION_SETTING(SearchLightOff, "Vehicles", false);
NO_ACTION_SETTING(SearchLightOn, "Vehicles", false);
NO_ACTION_SETTING(TakeDropWeapon, "Weapons", false);
NO_ACTION_SETTING(TakeWeapon, "Weapons", false);
NO_ACTION_SETTING(TurnIn, "Vehicles", false);
NO_ACTION_SETTING(TurnOut, "Vehicles", false);
NO_ACTION_SETTING(UAVTerminalOpen, "Vehicles", false);
NO_ACTION_SETTING(UnloadUnconsciousUnits, "Vehicles", false);