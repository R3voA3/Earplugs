/*
    Author: R3vo

    Description:
    Removes earplugs.

    Parameter(s):
    -

    Returns:
    true
*/

if (missionNamespace getVariable ["EP_in", true]) then
{
    EP_fadeTime fadeSound EP_orgVolume;
    EP_in = nil;
    EP_orgVolume = nil;

    if (EP_musicVol) then
    {
        EP_fadeTime fadeMusic EP_orgMusicVol;
        EP_orgMusicVol = nil;
    };

    if (EP_radioVol) then
    {
        EP_fadeTime fadeRadio EP_orgRadioVol;
        EP_orgRadioVol = nil;
    };

    if (EP_showNotifications) then
    {
        ["EP_Out"] call BIS_fnc_showNotification;
    };
};
