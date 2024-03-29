#define COMPONENT main
#include "script_mod.hpp"

// #define DEBUG_MODE_FULL
// #define DISABLE_COMPILE_CACHE
// #define DEBUG_SYNCHRONOUS
// #define ENABLE_PERFORMANCE_COUNTERS

#ifdef DEBUG_ENABLED_NO_ACTIONS
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_SETTINGS_NO_ACTIONS
    #define DEBUG_SETTINGS DEBUG_SETTINGS_NO_ACTIONS
#endif

#include "script_macros.hpp"
