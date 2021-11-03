#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "A3_Data_F_AoW_Loadorder",
            "cba_main"
        };
        author = "johnb43";
        authors[] = {"veteran29", "johnb43"};
        url = "https://github.com/johnb432/No-Actions";
        VERSION_CONFIG;
    };
};

class CfgMods {
    class PREFIX {
        name = "No Actions";
        author = "johnb43";
        tooltipOwned = "No Actions";
        hideName = 0;
        hidePicture = 0;
        actionName = "Github";
        action = "https://github.com/johnb432/No-Actions";
        description = "Removes various vanilla scrollwheel interactions.";
        overview = "Removes various vanilla scrollwheel interactions.";
        picture = "\x\no_actions\addons\main\ui\logo_no_actions.paa";
        logo = "\x\no_actions\addons\main\ui\logo_no_actions.paa";
        overviewPicture = "\x\no_actions\addons\main\ui\logo_no_actions.paa";
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgActions.hpp"
