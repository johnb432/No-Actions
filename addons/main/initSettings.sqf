#define NO_ACTION_SETTING(NAME,CATEGORY)\
[\
    QGVAR(NAME),\
    "CHECKBOX",\
    [\
        FORMAT_1(LLSTRING(action),[ARR_2(QUOTE(NAME),false)] call FUNC(getActionName)),\
        FORMAT_1(LLSTRING(action_desc),[ARR_2(QUOTE(NAME),true)] call FUNC(getActionName))\
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

NO_ACTION_SETTING(FlapsDown,"Air Vehicles");
NO_ACTION_SETTING(FlapsUp,"Air Vehicles");

NO_ACTION_SETTING(Gear,"General");

NO_ACTION_SETTING(GetInCargo,"Vehicles");
NO_ACTION_SETTING(GetInCommander,"Vehicles");
NO_ACTION_SETTING(GetInDriver,"Vehicles");
NO_ACTION_SETTING(GetInGunner,"Vehicles");
NO_ACTION_SETTING(GetInPilot,"Vehicles");
NO_ACTION_SETTING(GetInTurret,"Vehicles");

NO_ACTION_SETTING(GetOut,"Vehicles");

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

NO_ACTION_SETTING(PutBag,"General");

NO_ACTION_SETTING(Refuel,"Vehicles");
NO_ACTION_SETTING(Repair,"Vehicles");
NO_ACTION_SETTING(RepairVehicle,"Vehicles");

NO_ACTION_SETTING(SearchLightOff,"Vehicles");
NO_ACTION_SETTING(SearchLightOn,"Vehicles");

NO_ACTION_SETTING(SetTimer,"Explosives");

NO_ACTION_SETTING(BackFromUAV,"UAV");
NO_ACTION_SETTING(SwitchToUAVDriver,"UAV");
NO_ACTION_SETTING(SwitchToUAVGunner,"UAV");
NO_ACTION_SETTING(UAVTerminalMakeConnection,"UAV");
NO_ACTION_SETTING(UAVTerminalReleaseConnection,"UAV");
NO_ACTION_SETTING(UAVTerminalOpen,"UAV");

NO_ACTION_SETTING(TakeItem,"General");

NO_ACTION_SETTING(TakeDropWeapon,"Weapons");
NO_ACTION_SETTING(TakeWeapon,"Weapons");

NO_ACTION_SETTING(TouchOff,"Explosives");
NO_ACTION_SETTING(TouchOffMines,"Explosives");

NO_ACTION_SETTING(TurnIn,"Vehicles");
NO_ACTION_SETTING(TurnOut,"Vehicles");

NO_ACTION_SETTING(UseMagazine,"Explosives");
NO_ACTION_SETTING(UseWeapon,"Explosives");

NO_ACTION_SETTING(VectoringDown,"Air Vehicles");
NO_ACTION_SETTING(VectoringUp,"Air Vehicles");

NO_ACTION_SETTING(VTOLVectoring,"Air Vehicles");
NO_ACTION_SETTING(VTOLVectoringCancel,"Air Vehicles");

private _cfgPatches = configFile >> "CfgPatches";

// ACE compat
if !(isClass (_cfgPatches >> "ace_explosives")) then {
    NO_ACTION_SETTING(ActivateMine,"Explosives");
    NO_ACTION_SETTING(Deactivate,"Explosives");
    NO_ACTION_SETTING(DeactivateMine,"Explosives");
    NO_ACTION_SETTING(UseContainerMagazine,"Explosives");
};

if !(isClass (_cfgPatches >> "ace_interact_menu")) then {
    NO_ACTION_SETTING(OpenBag,"General");
};

if !(isClass (_cfgPatches >> "ace_medical_engine")) then {
    NO_ACTION_SETTING(FirstAid,"Medical");
    NO_ACTION_SETTING(Heal,"Medical");
    NO_ACTION_SETTING(HealSoldier,"Medical");
    NO_ACTION_SETTING(HealSoldierSelf,"Medical");
    NO_ACTION_SETTING(UnloadFromCargo,"Vehicles");
    NO_ACTION_SETTING(UnloadFromCommander,"Vehicles");
    NO_ACTION_SETTING(UnloadFromDriver,"Vehicles");
    NO_ACTION_SETTING(UnloadFromGunner,"Vehicles");
    NO_ACTION_SETTING(UnloadFromPilot,"Vehicles");
    NO_ACTION_SETTING(UnloadFromTurret,"Vehicles");
    NO_ACTION_SETTING(UnloadUnconsciousUnits,"Vehicles");
};

if !(isClass (_cfgPatches >> "ace_norearm")) then {
    NO_ACTION_SETTING(Rearm,"Vehicles");
};

if !(isClass (_cfgPatches >> "ace_vehicles")) then {
    NO_ACTION_SETTING(Eject,"Vehicles");
};
