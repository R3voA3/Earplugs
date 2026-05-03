/*
    Author: R3vo

    Description:
    Inserts earplugs if permitted.

    Parameter(s):
    -

    Returns:
    true
*/

if !(missionNamespace getVariable ["EP_in", false]) then
{
    EP_orgVolume = soundVolume;
    EP_fadeTime fadeSound (soundVolume * (1 - EP_volCoef));
    EP_in = true;

    if (EP_musicVol) then
    {
        EP_orgMusicVol = musicVolume;
        EP_fadeTime fadeMusic (musicVolume * (1 - EP_volCoef));
    };

    if (EP_radioVol) then
    {
        EP_orgRadioVol = radioVolume;
        EP_fadeTime fadeRadio (radioVolume * (1 - EP_volCoef));
    };

    if (EP_showNotifications) then
    {
        ["EP_In"] call BIS_fnc_showNotification;
    };
};

true
