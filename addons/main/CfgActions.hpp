#include "script_component.hpp"

class CfgActions {
	class None;
	class CollisionLightOn : None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'CollisionLightOn' >> 'GVAR(settingCollisionLightOn)'));
		GVAR(settingCollisionLightOn) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showCollisionLightOn)', 0)]);
  };

	class CollisionLightOff : CollisionLightOn {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'CollisionLightOff' >> 'GVAR(settingCollisionLightOff)'));
		GVAR(settingCollisionLightOff) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showCollisionLightOff)', 0)]);
  };

  class DisAssemble : None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'DisAssemble' >> 'GVAR(settingDisAssemble)'));
		GVAR(settingDisAssemble) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showDisAssemble)', 0)]);
  };

	class EngineOff: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'EngineOff' >> 'GVAR(settingEngineOff)'));
		GVAR(settingEngineOff) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showEngineOff)', 0)]);
	};

	class EngineOn: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'EngineOn' >> 'GVAR(settingEngineOn)'));
		GVAR(settingEngineOn) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showEngineOn)', 0)]);
	};

	class Eject: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'Eject' >> 'GVAR(settingEject)'));
		GVAR(settingEject) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showEject)', 0)]);
	};

  class GetOut: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'GetOut' >> 'GVAR(settingGetOut)'));
		GVAR(settingGetOut) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showGetOut)', 0)]);
  };

	class Gear: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'Gear' >> 'GVAR(settingGear)'));
		GVAR(settingGear) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showGear)', 0)]);
  };

	class LightOff: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'LightOff' >> 'GVAR(settingLightOff)'));
		GVAR(settingLightOff) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showLightOff)', 0)]);
	};

	class LightOn: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'LightOn' >> 'GVAR(settingLightOn)'));
		GVAR(settingLightOn) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showLightOn)', 0)]);
	};

	class LoadMagazine: None {};
	class LoadEmptyMagazine: LoadMagazine {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'LoadEmptyMagazine' >> 'GVAR(settingLoadEmptyMagazine)'));
		GVAR(settingLoadEmptyMagazine) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showLoadEmptyMagazine)', 0)]);
	};

	class LoadOtherMagazine: LoadMagazine {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'LoadOtherMagazine' >> 'GVAR(settingLoadOtherMagazine)'));
		GVAR(settingLoadOtherMagazine) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showLoadOtherMagazine)', 0)]);
	};

	class ManualFire: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'ManualFire' >> 'GVAR(settingManualFire)'));
		GVAR(settingManualFire) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showManualFire)', 0)]);
	};

	class OpenBag: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'OpenBag' >> 'GVAR(settingOpenBag)'));
    GVAR(settingOpenBag) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showOpenBag)', 0)]);
  };

  class Rearm: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'Rearm' >> 'GVAR(settingRearm)'));
    GVAR(settingRearm) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showRearm)', 0)]);
  };

	class SearchLightOn: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'SearchLightOn' >> 'GVAR(settingSearchLightOn)'));
		GVAR(settingSearchLightOn) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showSearchLightOn)', 0)]);
	};

	class SearchLightOff: SearchLightOn {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'SearchLightOff' >> 'GVAR(settingSearchLightOff)'));
		GVAR(settingSearchLightOff) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showSearchLightOff)', 0)]);
	};

	class TakeWeapon: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TakeWeapon' >> 'GVAR(settingTakeWeapon)'));
		GVAR(settingTakeWeapon) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTakeWeapon)', 0)]);
	};

  class TakeDropWeapon: TakeWeapon {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TakeDropWeapon' >> 'GVAR(settingTakeDropWeapon)'));
		GVAR(settingTakeDropWeapon) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTakeDropWeapon)', 0)]);
	};

  class TurnIn: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TurnIn' >> 'GVAR(settingTurnIn)'));
		GVAR(settingTurnIn) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTurnIn)', 0)]);
	};

	class TurnOut: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TurnOut' >> 'GVAR(settingTurnOut)'));
		GVAR(settingTurnOut) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTurnOut)', 0)]);
	};

	class UAVTerminalOpen: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'UAVTerminalOpen' >> 'GVAR(settingUAVTerminalOpen)'));
		GVAR(settingUAVTerminalOpen) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showUAVTerminalOpen)', 0)]);
	};

	class UnloadUnconsciousUnits: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'UnloadUnconsciousUnits' >> 'GVAR(settingUnloadUnconsciousUnits)'));
		GVAR(settingUnloadUnconsciousUnits) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showUnloadUnconsciousUnits)', 0)]);
	};
};