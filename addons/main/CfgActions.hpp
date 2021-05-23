#include "script_component.hpp"

class CfgActions {
    class None;
    ACTION(CollisionLightOn,None);
    ACTION(CollisionLightOff,CollisionLightOn);
    ACTION(DisAssemble,None);
    ACTION(EngineOff,None);
    ACTION(EngineOn,None);
    ACTION(Eject,None);
    ACTION(GetOut,None);
    ACTION(Gear,None);
    ACTION(LightOff,None);
    ACTION(LightOn,None);

    class LoadMagazine: None {};
    ACTION(LoadEmptyMagazine,LoadMagazine);
    ACTION(LoadOtherMagazine,LoadMagazine);

    ACTION(ManualFire,None);
    ACTION(OpenBag,None);
    ACTION(Rearm,None);
    ACTION(SearchLightOn,None);
    ACTION(SearchLightOff,SearchLightOn);
    ACTION(TakeWeapon,None);
    ACTION(TakeDropWeapon,TakeWeapon);
    ACTION(TurnIn,None);
    ACTION(TurnOut,None);
    ACTION(UAVTerminalOpen,None);
    ACTION(UnloadUnconsciousUnits,None);
};