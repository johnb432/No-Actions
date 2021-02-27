#include "script_component.hpp"

#define ACTION(NAME,PARENT)\
class NAME: PARENT {\
    GVAR(DOUBLES(setting,NAME)) = QUOTE(GETPRVAR(GVAR(DOUBLES(show,NAME)),0));\
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'NAME' >> QQGVAR(DOUBLES(setting,NAME))));\
}

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