#include "script_component.hpp"

#define ACTION(NAME,PARENT)\
class NAME: PARENT {\
    show = QUOTE(call compile 'GETPRVAR(QQGVAR(DOUBLES(show,NAME)),1)');\
}

class CfgActions {
    class None;
    ACTION(AutoHover,None);
    ACTION(AutoHoverCancel,AutoHover);

    ACTION(Assemble,None);
    ACTION(DisAssemble,None);

    ACTION(CancelLand,None);
    ACTION(Land,None);

    ACTION(CollisionLightOn,None);
    ACTION(CollisionLightOff,CollisionLightOn);

    ACTION(EngineOff,None);
    ACTION(EngineOn,None);

    ACTION(FlapsDown,None);
    ACTION(FlapsUp,None);

    ACTION(Gear,None);

    ACTION(GetInCargo,None);
    ACTION(GetInCommander,None);
    ACTION(GetInDriver,None);
    ACTION(GetInGunner,None);
    ACTION(GetInPilot,None);
    ACTION(GetInTurret,None);

    ACTION(GetOut,None);

    ACTION(LandGear,None);
    ACTION(LandGearUp,LandGear);

    ACTION(LightOn,None);
    ACTION(LightOff,LightOn);

    class LoadMagazine: None {};
    ACTION(LoadEmptyMagazine,LoadMagazine);
    ACTION(LoadOtherMagazine,LoadMagazine);

    ACTION(LockVehicleControl,None);
    ACTION(UnlockVehicleControl,None);
    ACTION(TakeVehicleControl,None);
    ACTION(SuspendVehicleControl,None);

    ACTION(ManualFire,None);
    ACTION(ManualFireCancel,ManualFire);

    ACTION(MoveToCargo,None);
    ACTION(MoveToCommander,None);
    ACTION(MoveToDriver,None);
    ACTION(MoveToGunner,None);
    ACTION(MoveToPilot,MoveToDriver);
    ACTION(MoveToTurret,None);

    ACTION(PutBag,None);

    ACTION(Refuel,None);
    ACTION(Repair,None);
    ACTION(RepairVehicle,None);

    ACTION(SearchLightOn,None);
    ACTION(SearchLightOff,SearchLightOn);

    ACTION(SetTimer,None);

    ACTION(BackFromUAV,None);
    ACTION(SwitchToUAVDriver,None);
    ACTION(SwitchToUAVGunner,None);
    ACTION(UAVTerminalMakeConnection,None);
    ACTION(UAVTerminalReleaseConnection,None);
    ACTION(UAVTerminalOpen,None);

    ACTION(TakeItem,None);

    ACTION(TakeWeapon,None);
    ACTION(TakeDropWeapon,TakeWeapon);

    ACTION(TouchOff,None);
    ACTION(TouchOffMines,None);

    ACTION(TurnIn,None);
    ACTION(TurnOut,None);

    ACTION(UseMagazine,None);
    ACTION(UseWeapon,None);

    ACTION(VectoringDown,None);
    ACTION(VectoringUp,None);

    ACTION(VTOLVectoring,AutoHover);
    ACTION(VTOLVectoringCancel,AutoHover);

    // ACE compat
    #if __has_include("z\ace\addons\explosives\script_component.hpp") == 0
        ACTION(ActivateMine,None);
        ACTION(Deactivate,None);
        ACTION(DeactivateMine,None);
        ACTION(UseContainerMagazine,None);
    #endif

    #if __has_include("z\ace\addons\interact_menu\script_component.hpp") == 0
        ACTION(OpenBag,None);
    #endif

    #if __has_include("z\ace\addons\medical_engine\script_component.hpp") == 0
        ACTION(FirstAid,None);
        ACTION(Heal,None);
        ACTION(HealSoldier,None);
        ACTION(HealSoldierSelf,None);
        ACTION(UnloadFromCargo,None);
        ACTION(UnloadFromCommander,None);
        ACTION(UnloadFromDriver,None);
        ACTION(UnloadFromGunner,None);
        ACTION(UnloadFromPilot,None);
        ACTION(UnloadFromTurret,None);
        ACTION(UnloadUnconsciousUnits,None);
    #endif

    #if __has_include("z\ace\addons\norearm\script_component.hpp") == 0
        ACTION(Rearm,None);
    #endif

    #if __has_include("z\ace\addons\vehicles\script_component.hpp") == 0
        ACTION(Eject,None);
    #endif
};
