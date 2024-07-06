class Traintendo extends AIController
 {
   constructor()
   {
   }
 }


 function Traintendo::Start()
 {
   AILog.Info("Traintendo Started.");
   SetCompanyName();

   //set a legal railtype.
   local types = AIRailTypeList();
   AIRail.SetCurrentRailType(types.Begin());

   //Keep running. If Start() exits, the AI dies.
   while (true) {
     this.Sleep(100);
     AILog.Warning("TODO: Add functionality to the AI.");
   }
 }

 function Traintendo::Save()
 {
   local table = {};
   //TODO: Add your save data to the table.
   return table;
 }

 function Traintendo::Load(version, data)
 {
   AILog.Info(" Loaded");
   //TODO: Add your loading routines.
 }


 function Traintendo::SetCompanyName()
 {
   if(!AICompany.SetName("Traintendo AI")) {
     local i = 2;
     while(!AICompany.SetName("Traintendo AI #" + i)) {
       i = i + 1;
       if(i > 255) break;
     }
   }
   AICompany.SetPresidentName("CEEZEE");
 }