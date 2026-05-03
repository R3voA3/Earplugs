class CfgPatches
{
    class R3vo_EP
    {
        requiredVersion= 2.18;
        requiredAddons[]= {"cba_main"};
        author[] = {"R3vo"};
        units[] = {};
        weapons[] = {};
    };
};

class CfgNotifications
{
    class Default;
    class EP_In: Default
    {
        title = "$STR_EP_NOTIFICATION_EARPLUGS_IN_TITLE";
        iconPicture = "\z\ep\addons\main\data\logo_ca.paa";
        description = "$STR_EP_NOTIFICATION_EARPLUGS_IN_DESCRIPTION";
        duration = 1;
    };
    class EP_Out: EP_In
    {
        title = "$STR_EP_NOTIFICATION_EARPLUGS_OUT_TITLE";
        description = "$STR_EP_NOTIFICATION_EARPLUGS_OUT_DESCRIPTION";
    };
    class EP_ACE: EP_In
    {
        title = "$STR_EP_NOTIFICATION_COMBAT_DEAFNESS_TITLE";
        description = "$STR_EP_NOTIFICATION_COMBAT_DEAFNESS_DESCRIPTION";
        duration = 3;
    };
};

class CfgFunctions
{
    class R3vo
    {
        tag = "EP";
        class Earplugs
        {
            file = "\z\ep\addons\main\functions";
            class insertEarplugs {};
            class removeEarplugs {};
            class toggle {};
        };
    };
};

// Extended EH to make sure settings are available in Eden
class Extended_PreInit_EventHandlers
{
    class EP_PreInit_Init
    {
        init = "call compileScript ['\z\ep\addons\main\functions\fn_preInit.sqf']";
    };
};
