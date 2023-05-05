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

NO_ACTION_SETTING(AutoHover,"Air Vehicles");
NO_ACTION_SETTING(AutoHoverCancel,"Air Vehicles");

NO_ACTION_SETTING(Assemble,"Static Weapons");
NO_ACTION_SETTING(DisAssemble,"Static Weapons");

NO_ACTION_SETTING(CancelLand,"Air Vehicles");
NO_ACTION_SETTING(Land,"Air Vehicles");

NO_ACTION_SETTING(CollisionLightOff,"Vehicles");
NO_ACTION_SETTING(CollisionLightOn,"Vehicles");

NO_ACTION_SETTING(EngineOff,"Vehicles");
NO_ACTION_SETTING(EngineOn,"Vehicles");

NO_ACTION_SETTING(Eject,"Vehicles");
NO_ACTION_SETTING(GetOut,"Vehicles");

NO_ACTION_SETTING(FlapsDown,"Air Vehicles");
NO_ACTION_SETTING(FlapsUp,"Air Vehicles");

NO_ACTION_SETTING(GetInCargo,"Vehicles");
NO_ACTION_SETTING(GetInCommander,"Vehicles");
NO_ACTION_SETTING(GetInDriver,"Vehicles");
NO_ACTION_SETTING(GetInGunner,"Vehicles");
NO_ACTION_SETTING(GetInPilot,"Vehicles");
NO_ACTION_SETTING(GetInTurret,"Vehicles");

NO_ACTION_SETTING(Gear,"General");

NO_ACTION_SETTING(LandGear,"Air Vehicles");
NO_ACTION_SETTING(LandGearUp,"Air Vehicles");

NO_ACTION_SETTING(LightOff,"Vehicles");
NO_ACTION_SETTING(LightOn,"Vehicles");

NO_ACTION_SETTING(LoadEmptyMagazine,"Weapons");
NO_ACTION_SETTING(LoadOtherMagazine,"Weapons");

NO_ACTION_SETTING(LockVehicleControl,"Air Vehicles");
NO_ACTION_SETTING(UnlockVehicleControl,"Air Vehicles");
NO_ACTION_SETTING(TakeVehicleControl,"Air Vehicles");
NO_ACTION_SETTING(SuspendVehicleControl,"Air Vehicles");

NO_ACTION_SETTING(ManualFire,"Vehicles");
NO_ACTION_SETTING(ManualFireCancel,"Vehicles");

NO_ACTION_SETTING(MoveToCargo,"Vehicles");
NO_ACTION_SETTING(MoveToCommander,"Vehicles");
NO_ACTION_SETTING(MoveToDriver,"Vehicles");
NO_ACTION_SETTING(MoveToGunner,"Vehicles");
NO_ACTION_SETTING(MoveToPilot,"Vehicles");
NO_ACTION_SETTING(MoveToTurret,"Vehicles");

NO_ACTION_SETTING(OpenBag,"General");
NO_ACTION_SETTING(PutBag,"General");

NO_ACTION_SETTING(Rearm,"Vehicles");

NO_ACTION_SETTING(SearchLightOff,"Vehicles");
NO_ACTION_SETTING(SearchLightOn,"Vehicles");

NO_ACTION_SETTING(BackFromUAV,"UAV");
NO_ACTION_SETTING(SwitchToUAVDriver,"UAV");
NO_ACTION_SETTING(SwitchToUAVGunner,"UAV");
NO_ACTION_SETTING(UAVTerminalMakeConnection,"UAV");
NO_ACTION_SETTING(UAVTerminalReleaseConnection,"UAV");
NO_ACTION_SETTING(UAVTerminalOpen,"UAV");

NO_ACTION_SETTING(TakeItem,"General");

NO_ACTION_SETTING(TakeDropWeapon,"Weapons");
NO_ACTION_SETTING(TakeWeapon,"Weapons");

NO_ACTION_SETTING(TurnIn,"Vehicles");
NO_ACTION_SETTING(TurnOut,"Vehicles");

NO_ACTION_SETTING(UnloadUnconsciousUnits,"Vehicles");

NO_ACTION_SETTING(VectoringDown,"Air Vehicles");
NO_ACTION_SETTING(VectoringUp,"Air Vehicles");

NO_ACTION_SETTING(VTOLVectoring,"Air Vehicles");
NO_ACTION_SETTING(VTOLVectoringCancel,"Air Vehicles");
