#include "script_component.hpp"

class CfgActions {
	class None;
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

  class Rearm: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'Rearm' >> 'GVAR(settingRearm)'));
    GVAR(settingRearm) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showRearm)', 0)]);
  };

  class TakeDropWeapon: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TakeDropWeapon' >> 'GVAR(settingTakeDropWeapon)'));
		GVAR(settingTakeDropWeapon) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTakeDropWeapon)', 0)]);
	};

  class TakeWeapon: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TakeWeapon' >> 'GVAR(settingTakeWeapon)'));
		GVAR(settingTakeWeapon) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTakeWeapon)', 0)]);
	};

  class TurnIn: None {
    show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TurnIn' >> 'GVAR(settingTurnIn)'));
		GVAR(settingTurnIn) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTurnIn)', 0)]);
	};

	class TurnOut: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'TurnOut' >> 'GVAR(settingTurnOut)'));
		GVAR(settingTurnOut) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showTurnOut)', 0)]);
	};

	class UnloadUnconsciousUnits: None {
		show = QUOTE(call compile getText (configFile >> 'CfgActions' >> 'UnloadUnconsciousUnits' >> 'GVAR(settingUnloadUnconsciousUnits)'));
		GVAR(settingUnloadUnconsciousUnits) = QUOTE(profileNamespace getVariable [ARR_2('GVAR(showUnloadUnconsciousUnits)', 0)]);
	};
};