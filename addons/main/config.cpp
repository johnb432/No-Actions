#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "A3_Data_F_AoW_Loadorder",
            "cba_main",
            "cba_xeh"
        };
        author = "johnb43";
        authors[] = {"veteran29", "johnb43"};
        url = "https://github.com/johnb432/No-Actions";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgActions.hpp"
