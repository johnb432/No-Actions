// COMPONENT should be defined in the script_component.hpp and included BEFORE this hpp
#define MAINPREFIX x
#define PREFIX no_actions

#include "script_version.hpp"

#define VERSION     MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_STR MAJOR.MINOR.PATCHLVL.BUILD
#define VERSION_AR  MAJOR,MINOR,PATCHLVL,BUILD

#define NO_ACTIONS_TAG NO_ACTIONS

// MINIMAL required version for the Mod. Components can specify others..
#define REQUIRED_VERSION 1.96
#define REQUIRED_CBA_VERSION {3,12,2}

#define COMPONENT_NAME QUOTE(No Actions)
