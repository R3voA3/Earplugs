/*
    Author: R3vo

    Description:
    Toggle earplugs.

    Parameter(s):
    -

    Returns:
    true / false
*/

if (!hasInterface) exitWith {false};

private _earplugsOut = !(missionNamespace getVariable ["EP_in", false]);
private _aceHearingDisabled = !(missionNamespace getVariable ["ace_hearing_enableCombatDeafness", false]);

if (_earplugsOut && {_aceHearingDisabled}) then
{
    call EP_fnc_insertEarplugs;
}
else
{
    if (!_earplugsOut) then
    {
        call EP_fnc_removeEarplugs;
    };

    if !(_aceHearingDisabled) then
    {
        ["EP_ACE"] call BIS_fnc_showNotification;
    };
};

true
