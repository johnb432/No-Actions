#define NO_ACTION_SETTING(NAME,CATEGORY,ACTION_ENUM)\
GVAR(allActions) set [ARR_2(QUOTE(NAME),ACTION_ENUM)];\
[\
    QGVAR(NAME),\
    "CHECKBOX",\
    [\
        [ARR_2(QUOTE(NAME),false)] call FUNC(getActionName),\
        [ARR_2(QUOTE(NAME),true)] call FUNC(getActionName)\
    ],\
    [COMPONENT_NAME,CATEGORY],\
    false,\
    0,\
    {\
        [ACTION_ENUM, _this] call FUNC(hideAction);\
    }\
] call CBA_fnc_addSetting

NO_ACTION_SETTING(ActiveSensorsOff,"Vehicles",169);
NO_ACTION_SETTING(ActiveSensorsOn,"Vehicles",168);

NO_ACTION_SETTING(ArtilleryComputer,"Vehicles",131);

NO_ACTION_SETTING(AutoHover,"Air Vehicles",68);
NO_ACTION_SETTING(AutoHoverCancel,"Air Vehicles",69);

NO_ACTION_SETTING(Assemble,"Static Weapons",125);
NO_ACTION_SETTING(DisAssemble,"Static Weapons",126);

NO_ACTION_SETTING(CancelLand,"Air Vehicles",50);
NO_ACTION_SETTING(Land,"Air Vehicles",49);

NO_ACTION_SETTING(CollisionLightOff,"Vehicles",146);
NO_ACTION_SETTING(CollisionLightOn,"Vehicles",145);

NO_ACTION_SETTING(EngineOff,"Vehicles",15);
NO_ACTION_SETTING(EngineOn,"Vehicles",14);

NO_ACTION_SETTING(FlapsDown,"Air Vehicles",83);
NO_ACTION_SETTING(FlapsUp,"Air Vehicles",84);

NO_ACTION_SETTING(FirePutDown,"General",80);
NO_ACTION_SETTING(FireInflame,"General",79);

NO_ACTION_SETTING(Gear,"General",111);

NO_ACTION_SETTING(GetInCargo,"Vehicles",5);
NO_ACTION_SETTING(GetInCommander,"Vehicles",1);
NO_ACTION_SETTING(GetInDriver,"Vehicles",2);
NO_ACTION_SETTING(GetInGunner,"Vehicles",4);
NO_ACTION_SETTING(GetInPilot,"Vehicles",3);
NO_ACTION_SETTING(GetInTurret,"Vehicles",6);

NO_ACTION_SETTING(GetOut,"Vehicles",11);

NO_ACTION_SETTING(HelicopterAutoTrimOff,"Air Vehicles",184);
NO_ACTION_SETTING(HelicopterAutoTrimOn,"Air Vehicles",183);
NO_ACTION_SETTING(HelicopterTrimOff,"Air Vehicles",186);
NO_ACTION_SETTING(HelicopterTrimOn,"Air Vehicles",185);

NO_ACTION_SETTING(HookCargo,"Air Vehicles",181);
NO_ACTION_SETTING(UnhookCargo,"Air Vehicles",182);

NO_ACTION_SETTING(LadderUp,"General",74);
NO_ACTION_SETTING(LadderDown,"General",75);
NO_ACTION_SETTING(LadderOnDown,"General",76);
NO_ACTION_SETTING(LadderOnUp,"General",77);
NO_ACTION_SETTING(LadderOff,"General",78);

NO_ACTION_SETTING(LandGear,"Air Vehicles",81);
NO_ACTION_SETTING(LandGearUp,"Air Vehicles",82);

NO_ACTION_SETTING(LightOff,"Vehicles",13);
NO_ACTION_SETTING(LightOn,"Vehicles",12);

NO_ACTION_SETTING(LoadEmptyMagazine,"Weapons",22);
NO_ACTION_SETTING(LoadOtherMagazine,"Weapons",21);

NO_ACTION_SETTING(LoadVehicle,"Vehicles",189);
NO_ACTION_SETTING(UnloadVehicle,"Vehicles",190);
NO_ACTION_SETTING(UnloadAllVehicles,"Vehicles",191);

NO_ACTION_SETTING(LockVehicleControl,"Air Vehicles",141);
NO_ACTION_SETTING(UnlockVehicleControl,"Air Vehicles",142);
NO_ACTION_SETTING(TakeVehicleControl,"Air Vehicles",139);
NO_ACTION_SETTING(SuspendVehicleControl,"Air Vehicles",140);

NO_ACTION_SETTING(ManualFire,"Vehicles",66);
NO_ACTION_SETTING(ManualFireCancel,"Vehicles",67);

NO_ACTION_SETTING(MoveToCargo,"Vehicles",56);
NO_ACTION_SETTING(MoveToCommander,"Vehicles",55);
NO_ACTION_SETTING(MoveToDriver,"Vehicles",52);
NO_ACTION_SETTING(MoveToGunner,"Vehicles",54);
NO_ACTION_SETTING(MoveToPilot,"Vehicles",53);
NO_ACTION_SETTING(MoveToTurret,"Vehicles",57);

NO_ACTION_SETTING(OpenParachute,"General",138);

NO_ACTION_SETTING(OpenBag,"General",120);
NO_ACTION_SETTING(PutBag,"General",123);

NO_ACTION_SETTING(PeriscopeDepthOff,"Vehicles",160);
NO_ACTION_SETTING(PeriscopeDepthOn,"Vehicles",159);

NO_ACTION_SETTING(Refuel,"Vehicles",9);
NO_ACTION_SETTING(Repair,"Vehicles",8);
NO_ACTION_SETTING(RepairVehicle,"Vehicles",132);

NO_ACTION_SETTING(SearchLightOff,"Vehicles",144);
NO_ACTION_SETTING(SearchLightOn,"Vehicles",143);

NO_ACTION_SETTING(StartTimer,"Explosives",61);
NO_ACTION_SETTING(SetTimer,"Explosives",62);

NO_ACTION_SETTING(BackFromUAV,"UAV",164);
NO_ACTION_SETTING(SwitchToUAVDriver,"UAV",165);
NO_ACTION_SETTING(SwitchToUAVGunner,"UAV",166);
NO_ACTION_SETTING(UAVTerminalMakeConnection,"UAV",162);
NO_ACTION_SETTING(UAVTerminalReleaseConnection,"UAV",163);
NO_ACTION_SETTING(UAVTerminalOpen,"UAV",161);
NO_ACTION_SETTING(UAVTerminalHackConnection,"UAV",167);

NO_ACTION_SETTING(User,"General",91);

NO_ACTION_SETTING(TakeItem,"General",28);
NO_ACTION_SETTING(TakeMine,"General",101);
/* #define EnumTakeItemFromBody 34
#define EnumTakeBackpackFromBody 35 */

NO_ACTION_SETTING(TakeDropWeapon,"Weapons",39);
NO_ACTION_SETTING(TakeWeapon,"Weapons",23);

NO_ACTION_SETTING(TouchOff,"Explosives",59);
NO_ACTION_SETTING(TouchOffMines,"Explosives",60);

NO_ACTION_SETTING(TurnIn,"Vehicles",44);
NO_ACTION_SETTING(TurnOut,"Vehicles",45);

NO_ACTION_SETTING(UseMagazine,"Explosives",104);
NO_ACTION_SETTING(UseWeapon,"Explosives",19);

NO_ACTION_SETTING(VectoringDown,"Air Vehicles",85);
NO_ACTION_SETTING(VectoringUp,"Air Vehicles",86);

NO_ACTION_SETTING(VTOLVectoring,"Air Vehicles",70);
NO_ACTION_SETTING(VTOLVectoringCancel,"Air Vehicles",71);

NO_ACTION_SETTING(WheelsBrakeOff,"Air Vehicles",188);
NO_ACTION_SETTING(WheelsBrakeOn,"Air Vehicles",187);

private _cfgPatches = configFile >> "CfgPatches";

// ACE compat
if (!isClass (_cfgPatches >> "ace_explosives")) then {
    NO_ACTION_SETTING(ActivateMine,"Explosives",102);
    NO_ACTION_SETTING(Deactivate,"Explosives",63);
    NO_ACTION_SETTING(DeactivateMine,"Explosives",103);
    NO_ACTION_SETTING(UseContainerMagazine,"Explosives",38);
};

if (!isClass (_cfgPatches >> "ace_medical_engine")) then {
    NO_ACTION_SETTING(FirstAid,"Medical",119);
    NO_ACTION_SETTING(Heal,"Medical",7);
    NO_ACTION_SETTING(HealSoldier,"Medical",113);
    NO_ACTION_SETTING(HealSoldierSelf,"Medical",115);
    NO_ACTION_SETTING(UnloadFromCargo,"Vehicles",155);
    NO_ACTION_SETTING(UnloadFromCommander,"Vehicles",157);
    NO_ACTION_SETTING(UnloadFromDriver,"Vehicles",153);
    NO_ACTION_SETTING(UnloadFromGunner,"Vehicles",156);
    NO_ACTION_SETTING(UnloadFromPilot,"Vehicles",154);
    NO_ACTION_SETTING(UnloadFromTurret,"Vehicles",158);
    NO_ACTION_SETTING(UnloadUnconsciousUnits,"Vehicles",178);
};

if (!isClass (_cfgPatches >> "ace_norearm")) then {
    NO_ACTION_SETTING(Rearm,"Vehicles",10);
};

if (!isClass (_cfgPatches >> "ace_vehicles")) then {
    NO_ACTION_SETTING(Eject,"Vehicles",51);
};
