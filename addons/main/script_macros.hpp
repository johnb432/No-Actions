#include "\x\cba\addons\main\script_macros_common.hpp"

//This part includes parts of the CBA and ACE3 macro libraries
#define QQUOTE(var1) QUOTE(QUOTE(var1))

#define GETPRVAR(var1,var2) (profileNamespace getVariable [ARR_2(QQUOTE(var1),var2)])
#define SETPRVAR(var1,var2) (profileNamespace setVariable [ARR_2(QUOTE(var1),var2)])
