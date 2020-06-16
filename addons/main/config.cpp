#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = COMPONENT_NAME;
		units[] = {};
		weapons[] = {};
		requiredVersion = REQUIRED_VERSION;
		requiredAddons[] =
		{
			"A3_Data_F_Tank_Loadorder",
			"cba_main"
		};
		authors[] = {"veteran29", "johnb43"};
	};
};
class CfgMods {
  class PREFIX {
    dir = "@No Actions";
    name = "No Actions";
    hideName = "true";
    actionName = "GitHub";
    action = "https://github.com/johnb432/No-Actions";
    description = "Removes various vanilla scrollwheel interactions";
  };
};

#include "CfgEventHandlers.hpp"
#include "CfgActions.hpp"