
 class Traintendo extends AIInfo
 {
   function GetAuthor()      { return "ConstructionZombie, Merio"; }
   function GetName()        { return "Traintendo"; }
   function GetDescription() { return "Testing AI"; }
   function GetVersion()     { return 1; }
   function GetDate()        { return "2024-04-07"; }
   function CreateInstance() { return "Traintendo"; }
   function GetShortName()   { return "CEEZ"; }
   function GetURL()         { return "https://github.com/ConstructionZombie/Traintendo/issues"; }

   function GetSettings()
   {
     AddSetting({name = "bool_setting",
                 description = "a bool setting, default off",
                 easy_value = 0,
                 medium_value = 0,
                 hard_value = 0,
                 custom_value = 0,
                 flags = AICONFIG_BOOLEAN});

     AddSetting({name = "bool2_setting",
                description = "a bool setting, default on",
                easy_value = 1,
                medium_value = 1,
                hard_value = 1,
                custom_value = 1,
                flags = AICONFIG_BOOLEAN});

     AddSetting({name = "int_setting",
                 description = "an int setting",
                 easy_value = 30,
                 medium_value = 20,
                 hard_value = 10,
                 custom_value = 20,
                 flags = 0,
                 min_value = 1,
                 max_value = 100});
   }
 }

 RegisterAI(Traintendo());