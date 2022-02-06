#define NO_ACTION_SETTING(NAME,CATEGORY)\
[\
    QGVAR(NAME),\
    "CHECKBOX",\
    [\
        LLSTRING(NAME),\
        LLSTRING(DOUBLES(NAME,desc))\
    ],\
    [COMPONENT_NAME,CATEGORY],\
    false,\
    0,\
    {\
        SETPRVAR(QGVAR(DOUBLES(show,NAME)),parseNumber !_this);\
    },\
    true\
] call CBA_fnc_addSetting

NO_ACTION_SETTING(CollisionLightOff,"Vehicles");
NO_ACTION_SETTING(CollisionLightOn,"Vehicles");
NO_ACTION_SETTING(DisAssemble,"Static Weapons");
NO_ACTION_SETTING(EngineOff,"Vehicles");
NO_ACTION_SETTING(EngineOn,"Vehicles");
NO_ACTION_SETTING(Eject,"Vehicles");
NO_ACTION_SETTING(GetOut,"Vehicles");
NO_ACTION_SETTING(Gear,"General");
NO_ACTION_SETTING(LightOff,"Vehicles");
NO_ACTION_SETTING(LightOn,"Vehicles");
NO_ACTION_SETTING(LoadEmptyMagazine,"Weapons");
NO_ACTION_SETTING(LoadOtherMagazine,"Weapons");
NO_ACTION_SETTING(ManualFire,"Vehicles");
NO_ACTION_SETTING(OpenBag,"General");
NO_ACTION_SETTING(Rearm,"Vehicles");
NO_ACTION_SETTING(SearchLightOff,"Vehicles");
NO_ACTION_SETTING(SearchLightOn,"Vehicles");
NO_ACTION_SETTING(TakeDropWeapon,"Weapons");
NO_ACTION_SETTING(TakeWeapon,"Weapons");
NO_ACTION_SETTING(TurnIn,"Vehicles");
NO_ACTION_SETTING(TurnOut,"Vehicles");
NO_ACTION_SETTING(UAVTerminalOpen,"Vehicles");
NO_ACTION_SETTING(UnloadUnconsciousUnits,"Vehicles");
