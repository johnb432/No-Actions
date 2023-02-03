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

    ACTION(Eject,None);
    ACTION(GetOut,None);

    ACTION(FlapsDown,None);
    ACTION(FlapsUp,None);

    ACTION(GetInCargo,None);
    ACTION(GetInCommander,None);
    ACTION(GetInDriver,None);
    ACTION(GetInGunner,None);
    ACTION(GetInPilot,None);
    ACTION(GetInTurret,None);

    ACTION(Gear,None);

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

    ACTION(OpenBag,None);
    ACTION(PutBag,None);

    ACTION(Rearm,None);

    ACTION(SearchLightOn,None);
    ACTION(SearchLightOff,SearchLightOn);

    ACTION(SwitchToUAVDriver,None);
    ACTION(SwitchToUAVGunner,None);
    ACTION(UAVTerminalMakeConnection,None);
    ACTION(UAVTerminalReleaseConnection,None);
    ACTION(UAVTerminalOpen,None);

    ACTION(TakeItem,None);

    ACTION(TakeWeapon,None);
    ACTION(TakeDropWeapon,TakeWeapon);

    ACTION(TurnIn,None);
    ACTION(TurnOut,None);

    ACTION(UnloadUnconsciousUnits,None);

    ACTION(VectoringDown,None);
    ACTION(VectoringUp,None);

    ACTION(VTOLVectoring,AutoHover);
    ACTION(VTOLVectoringCancel,AutoHover);
};
