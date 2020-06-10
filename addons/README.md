# ArmaForces - No Actions

[Steam Workshop](https://steamcommunity.com/sharedfiles/filedetails/?id=1682845363)<br/>
[GitHub](https://github.com/johnb432/No-Actions)<br/>
[AIME - Ace interaction menu expansion](https://steamcommunity.com/sharedfiles/filedetails/?id=1376867375)

## Content

This addon removes useless action menu actions. These can be configured in the CBA settings. Any changes requires a game restart for the changes to take effect.

- Engine on & off
- Lights on & off
- Eject (which ACE3 also offers to disable)
- Rearm
- Picking up weapons
- Reloading Weapons <b>(Warning: These settings affect vehicles too!!!)</b>
- and several more

AIME can be an alternative.

## Development environment

##### veteran29's original recommendation:
It is recommended to use Visual Studio Code with following extensions:
 * [SQFLint](https://marketplace.visualstudio.com/items?itemName=skacekachna.sqflint) - SQF Linting and completion

For addon building it is recommended to use [armake2](https://github.com/KoffeinFlummi/armake2).

The repository contains `build.bat` file that will use armake2 from "tools" dir to build the addon.  
If `ArmaForces_No_Actions.biprivatekey` will be present in root of the repo, then built PBOs will be signed with this key.

##### johnb43's recommendation:
Use ACE3's method. Atom is a great editor which can work very well with GitHub.<br/>
[ACE3 Template](https://github.com/acemod/arma-project-template)

## Credit

<b>veteran29 </b> for making the [original mod](https://steamcommunity.com/sharedfiles/filedetails/?id=1682845363)