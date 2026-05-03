#include "\a3\ui_f\hpp\definedikcodes.inc"

/*
    Author: R3vo

    Description:
    Init controls and settings.

    Parameter(s):
    -

    Returns:
    true / false
*/

if (!hasInterface) exitWith {false};

[
    "EP_volCoef",
    "SLIDER",
    "$STR_EP_SETTINGS_VOLCOEF",
    "Earplugs",
    [0.05, 0.95, 0.5, 2],
    nil
] call CBA_Settings_fnc_init;

[
    "EP_fadeTime",
    "SLIDER",
    "$STR_EP_SETTINGS_FADETIME",
    "Earplugs",
    [0, 10, 3, 0],
    nil
] call CBA_Settings_fnc_init;

[
    "EP_radioVol",
    "CHECKBOX",
    "$STR_EP_SETTINGS_AFFECTS_RADIOVOLUME",
    "Earplugs",
    false,
    nil
] call CBA_Settings_fnc_init;

[
    "EP_musicVol",
    "CHECKBOX",
    "$STR_EP_SETTINGS_AFFECTS_MUSICVOLUME",
    "Earplugs",
    false,
    nil
] call CBA_Settings_fnc_init;

[
    "EP_showNotifications",
    "CHECKBOX",
    "$STR_EP_SETTINGS_SHOWNOTIFICATIONS",
    "Earplugs",
    true,
    nil
] call CBA_Settings_fnc_init;

["CBA_SettingChanged",
{
    params ["_setting", "_value"];

    if (_setting != "ace_hearing_enableCombatDeafness") exitWith {};

    if (_value && {missionNamespace getVariable ["EP_in", false]}) then
    {
        call EP_fnc_removeEarplugs;
    };
}] call CBA_fnc_addEventHandler;

// Add control settings
[
    "Earplugs",
    "EP_toggleEarplugs",
    "$STR_EP_CONTROLS_TOGGLE_EARPLUGS",
    EP_fnc_toggle,
    {},
    [DIK_INSERT, [false, false, true]]
 ] call CBA_fnc_addKeybind;

true
