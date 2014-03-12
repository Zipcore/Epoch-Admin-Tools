_pathtotools = "admintools\tools\";
_pathtoskins = "admintools\skins\";
_pathtoweapon = "admintools\weaponkits\";
_pathtowaypoints = "admintools\waypoints\";
_pathtovehicles = "admintools\vehicles\";
_pathtocrates = "admintools\crates\";
_pathtosounds = "fixes\actions\";
_pathtobuildings = "admintools\buildings\";
_pathtohivevehicles = "admintools\hivevehicles\";
_pathtonew = "admintools\new\";

_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript2 = 'player execVM "'+_pathtoskins+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript4 = 'player execVM "'+_pathtowaypoints+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtocrates+'%1"';
_EXECscript7 = 'player execVM "'+_pathtosounds+'%1"';
_EXECscript8 = 'player execVM "'+_pathtobuildings+'%1"';
_EXECscript9 = 'player execVM "'+_pathtohivevehicles+'%1"';
_EXECscript10 = 'player execVM "'+_pathtonew+'%1"';

if ((getPlayerUID player) in AdminList) then { // Admins
	epochmenustart =
	[
		["",true],
		["-- Epoch Admin Tools (Level: Admin) --", [], "", -5, [["expression", ""]], "1", "0"],
		["Mod Menu", [], "#USER:ModMenu", -5, [["expression", ""]], "1", "1"],
		["Admin Menu", [], "#USER:AdminMenu", -5, [["expression", ""]], "1", "1"],
		["S-Admin Menu", [], "#USER:SuperAdminMenu", -5, [["expression", ""]], "1", "1"],
		["Teleport Menu", [], "#USER:TeleportMenu", -5, [["expression", ""]], "1", "1"],
		["Observe Menu", [], "#USER:ObserveMenu", -5, [["expression", ""]], "1", "1"],
		["Vehicle Menu",[],"#USER:VehicleMenu",-5,[["expression",""]],"1","1"],	
		["Epoch Menu", [], "#USER:EpochMenu", -5, [["expression", ""]], "1", "1"],
		["Weather Menu", [], "#USER:WTMenu", -5, [["expression", ""]], "1", "1"],
		["Admin Sounds Menu", [], "#USER:AdminSoundsMenu", -5, [["expression", ""]], "1", "1"],	
		["Skins Menu", [], "#USER:AdminSkinsMenu", -5, [["expression", ""]], "1", "1"],
		["Weapon Kits Menu", [], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
		["Box Menu",[],"#USER:BoxMenu",-5,[["expression",""]],"1","1"],		
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]	
	];
};

if ((getPlayerUID player) in ModList) then { // Mods
	epochmenustart =
	[
		["",true],
		["-- Epoch Admin Tools (Level: Mod) --", [], "", -5, [["expression", ""]], "1", "0"],
		["Mod Menu", [], "#USER:ModMenu", -5, [["expression", ""]], "1", "1"],
		["Teleport Menu", [], "#USER:TeleportMenu", -5, [["expression", ""]], "1", "1"],
		["Observe Menu", [], "#USER:ObserveMenu", -5, [["expression", ""]], "1", "1"],
		["Vehicle Menu (temp only)", [], "#USER:VehicleTempMenu", -5, [["expression", ""]], "1", "1"],
		["Admin Sounds Menu", [], "#USER:AdminSoundsMenu", -5, [["expression", ""]], "1", "1"],	
		["Skins Menu", [], "#USER:AdminSkinsMenu", -5, [["expression", ""]], "1", "1"],
		["Weapon Kits Menu", [], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
		["Box Menu",[],"#USER:BoxLiteMenu",-5,[["expression",""]],"1","1"],	
		["", [], "", -5, [["expression", ""]], "1", "0"],
		["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]	
	];
};

ModMenu =
[
	["",true],
	["-- Mod Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["God Mode", [],  "", -5, [["expression", format[_EXECscript1,"malplayerGM.sqf"]]], "1", "1"],
	["Vehicle God Mode",[],  "", -5, [["expression", format[_EXECscript1,"malvehicleGMon.sqf"]]], "1", "1"],
	["Heal (25m)", [],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
	["Flip Vehicle", [],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],
	["Repair (Aim) (Temp)", [],  "", -5, [["expression", format[_EXECscript1,"malpointrepair.sqf"]]], "1", "1"],
	["Delete (Aim) (Perm)",[],"",-5,[["expression",format[_EXECscript1,"DatabaseRemove.sqf"]]],"1","1"],
	["Refuel (Aim)", [],  "", -5, [["expression", format[_EXECscript1,"malpointonlyrefuel.sqf"]]], "1", "1"],	
	["Lock vehicle",[],"",-5,[["expression",format[_EXECscript1,"vehicle_lock.sqf"]]],"1","1"],
	["Unlock vehicle",[],"",-5,[["expression",format[_EXECscript1,"vehicle_unlock.sqf"]]],"1","1"],
	["Invisibility", [],  "", -5, [["expression", format[_EXECscript1,"malinvisinit.sqf"]]], "1", "1"],			
	["Infinite Ammo", [],  "", -5, [["expression", format[_EXECscript1,"malinfammo.sqf"]]], "1", "1"],
	["Weapon Kits", [], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
	["Building Box",[]  ,"",-5,[["expression",format[_EXECscript6,"building.sqf"]]],"1","1"],
	["Repair Box",[],"",-5,[["expression",format[_EXECscript6,"repair.sqf"]]],"1","1"],	
	["Skin Box",[],"",-5,[["expression",format[_EXECscript6,"skins.sqf"]]],"1","1"],	
	["Delete your gear", [],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

AdminMenu =
[
	["",true],
	["-- Admin Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Zombie Shield",[],"",-5,[["expression",format[_EXECscript1,"zombieshield.sqf"]]],"1","1"],
	["Destroy (Aim)",[],"",-5,[["expression",format[_EXECscript1,"destruction.sqf"]]],"1","1"],
	["Toggle Flying", [],  "", -5, [["expression", format[_EXECscript1,"malfly.sqf"]]], "1", "1"],
	["Enhanced ESP", [],  "", -5, [["expression", format[_EXECscript1,"EnhancedESP.sqf"]]], "1", "1"],
	["Kill Player",[],"",-5,[["expression",format[_EXECscript1,"playerkill.sqf"]]],"1","1"],			
	["Toggle Grass", [],  "", -5, [["expression", format[_EXECscript1,"malgrasson.sqf"]]], "1", "1"],
	["Terrain Menu",[],"#USER:termenu",-5,[["expression",""]],"1","1"],		
	["View-Distance Menu",[],"#USER:distmenu",-5,[["expression",""]],"1","1"],	
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

SuperAdminMenu =
[
	["",true],
	["-- Super Admin Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Spawn Buildings Menu", [], "#USER:BuildingsMenu", -5, [["expression", ""]], "1", "1"],
	["Maintain all Buildings",[],"",-5,[["expression",format[_EXECscript1,"fixbuildings.sqf"]]],"1","1"],
	["Base Destruction Menu", [], "#USER:BaseDestructionMenu", -5, [["expression", ""]], "1", "1"],	
	["Admin Fun Menu",[],"#USER:AdminFunMenu",-5,[["expression",""]],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

ObserveMenu =
[
	["",true],
	["-- Observe Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Spectate player (F3 to cancel)", [],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],
	["Spy Player Gear",[],"",-5,[["expression",format[_EXECscript1,"playerinv.sqf"]]],"1","1"],
	["Player ESP Only", [],  "", -5, [["expression", format[_EXECscript1,"mallightesp.sqf"]]], "1", "1"],
	["Invis. Skin", [],  "", -5, [["expression", format[_EXECscript1,"malinvisinit.sqf"]]], "1", "1"],	
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

TeleportMenu =
[
	["",true],
	["-- Teleport Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Teleport (Map)", [],  "", -5, [["expression", format[_EXECscript1,"malteleport.sqf"]]], "1", "1"],
	["Teleport To Me", [], "", -5, [["expression", format[_EXECscript1, "TPtoME.sqf"]]], "1", "1"],
	["Teleport To Player", [], "", -5, [["expression", format[_EXECscript1, "TpToPlayer.sqf"]]], "1", "1"],
	["Teleport To Waypoint", [], "#USER:TeleportWaypointMenu", -5, [["expression", ""]], "1", "1"],	
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

VehicleMenu =
[
	["",true],
	["-- Vehicle Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Temporary Vehicle Menu", [], "#USER:VehicleTempMenu", -5, [["expression", ""]], "1", "1"],		
	["Locked Vehicle Menu", [], "#USER:VehiclekeyMenu", -5, [["expression", ""]], "1", "1"],	
	["Locked Vehicle Menu (OP!)", [], "#USER:HiveVehiclesMenu", -5, [["expression", ""]], "1", "1"],	
	["Vehicle Tools", [], "#USER:VehicleTools", -5, [["expression", ""]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
VehicleTools =
[
	["",true],	
	["-- Vehicle Tools --", [], "", -5, [["expression", ""]], "1", "0"],
	["Speedboost", [],  "", -5, [["expression", format[_EXECscript1,"speedboost.sqf"]]], "1", "1"],		
	["Vehicle God Mode",[],  "", -5, [["expression", format[_EXECscript1,"malvehicleGMon.sqf"]]], "1", "1"],
	["Repair (Aim)", [],  "", -5, [["expression", format[_EXECscript1,"malpointrepair.sqf"]]], "1", "1"],
	["Refuel (Aim)", [],  "", -5, [["expression", format[_EXECscript1,"malpointonlyrefuel.sqf"]]], "1", "1"],		
	["Delete (Aim) (Temp)", [],  "", -5, [["expression", format[_EXECscript1,"malpointdelete.sqf"]]], "1", "1"],		
	["Delete (Aim) (Perm)",[],"",-5,[["expression",format[_EXECscript1,"DatabaseRemove.sqf"]]],"1","1"],
	["Flip (Aim)", [],  "", -5, [["expression", format[_EXECscript1,"flipvehicle.sqf"]]], "1", "1"],		
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
VehiclekeyMenu =
[
	["",true],
	["-- Locked Vehicle Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Neutral Trader Menu", [],  "", -5, [["expression", format[_EXECscript1,"malveh\malvehiclemenuneutral.sqf"]]], "1", "1"],
	["Friendly Trader Menu", [],  "", -5, [["expression", format[_EXECscript1,"malveh\malvehiclemenufriendly.sqf"]]], "1", "1"],		
	["Hero Trader Menu", [],  "", -5, [["expression", format[_EXECscript1,"malveh\malvehiclemenuhero.sqf"]]], "1", "1"],
	["Bandit Trader Menu", [],  "", -5, [["expression", format[_EXECscript1,"malveh\malvehiclemenubandit.sqf"]]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
AdminSkinsMenu =
[
	["",true],
	["-- Skins Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Survivor", [],  "", -5, [["expression", format[_EXECscript2,"Survivor.sqf"]]], "1", "1"],	
	["Hero", [],  "", -5, [["expression", format[_EXECscript2,"Hero.sqf"]]], "1", "1"],	
	["Bandit", [],  "", -5, [["expression", format[_EXECscript2,"Bandit.sqf"]]], "1", "1"],
	["Soldier", [],  "", -5, [["expression", format[_EXECscript2,"Soldier.sqf"]]], "1", "1"],		
	["Ghillie", [],  "", -5, [["expression", format[_EXECscript2,"Ghillie.sqf"]]], "1", "1"],
	["Special Forces", [],  "", -5, [["expression", format[_EXECscript2,"Specialforces.sqf"]]], "1", "1"],
	["Pilot", [],  "", -5, [["expression", format[_EXECscript2,"Pilot.sqf"]]], "1", "1"],			
	["Invisible", [],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Next page", [], "#USER:AdminSkinsMenu2", -5, [["expression", ""]], "1", "1"],		
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
AdminSkinsMenu2 =
[
	["",true],
	["-- Teleport Menu (Page2) --", [], "", -5, [["expression", ""]], "1", "0"],
	["Camo", [],  "", -5, [["expression", format[_EXECscript2,"Camo.sqf"]]], "1", "1"],		
	["Bodyguard", [],  "", -5, [["expression", format[_EXECscript2,"Bodyguard.sqf"]]], "1", "1"],
	["Officer", [],  "", -5, [["expression", format[_EXECscript2,"Officer.sqf"]]], "1", "1"],	
	["Alejandria", [],  "", -5, [["expression", format[_EXECscript2,"Alejandria.sqf"]]], "1", "1"],
	["Savannah", [],  "", -5, [["expression", format[_EXECscript2,"Savannah.sqf"]]], "1", "1"],	
	["Melly", [],  "", -5, [["expression", format[_EXECscript2,"Melly.sqf"]]], "1", "1"],
	["Bandit Jane", [],  "", -5, [["expression", format[_EXECscript2,"BanditJane.sqf"]]], "1", "1"],		
	["Invisible", [],  "", -5, [["expression", format[_EXECscript2,"invisible.sqf"]]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
WeaponMenu =
[
	["",true],
	["-- Give Weapon Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Delete all gear", [],  "", -5, [["expression", format[_EXECscript3,"cleanme.sqf"]]], "1", "1"],	
	["M4 Holo", [],  "", -5, [["expression", format[_EXECscript3,"itemz.sqf"]]], "1", "1"],
	["M4 CCO SD", [],  "", -5, [["expression", format[_EXECscript3,"itemz2.sqf"]]], "1", "1"],
	["AS50", [],  "", -5, [["expression", format[_EXECscript3,"itemz3.sqf"]]], "1", "1"],
	["FN FAL", [],  "", -5, [["expression", format[_EXECscript3,"itemz4.sqf"]]], "1", "1"],
	["M16 ACOG", [],  "", -5, [["expression", format[_EXECscript3,"itemz5.sqf"]]], "1", "1"],
	["Pecheneg 50 cal", [],  "", -5, [["expression", format[_EXECscript3,"itemz6.sqf"]]], "1", "1"],
	["Mk 48", [],  "", -5, [["expression", format[_EXECscript3,"item7.sqf"]]], "1", "1"],
	["Gold AK", [],  "", -5, [["expression", format[_EXECscript3,"item8.sqf"]]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Next page", [], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
WeaponMenu2 =
[
	["",true],
	["-- Give Weapon Menu (Page2) --", [], "", -5, [["expression", ""]], "1", "0"],
	["Aks Kobra", [],  "", -5, [["expression", format[_EXECscript3,"item9.sqf"]]], "1", "1"],
	[".338 LAPUA", [],  "", -5, [["expression", format[_EXECscript3,"item10.sqf"]]], "1", "1"],
	["DMR", [],  "", -5, [["expression", format[_EXECscript3,"item11.sqf"]]], "1", "1"],
	["M4A1 HWS GL SD Camo", [],  "", -5, [["expression", format[_EXECscript3,"item12.sqf"]]], "1", "1"],
	["M14 Aim", [],  "", -5, [["expression", format[_EXECscript3,"item13.sqf"]]], "1", "1"],
	["Alice", [],  "", -5, [["expression", format[_EXECscript3,"bp2.sqf"]]], "1", "1"],
	["Coyote", [],  "", -5, [["expression", format[_EXECscript3,"bp1.sqf"]]], "1", "1"],
	["No Weapons", [],  "", -5, [["expression", format[_EXECscript3,"items.sqf"]]], "1", "1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
AdminSoundsMenu=[
	["",true],
	["-- Admin Sounds --", [], "", -5, [["expression", ""]], "1", "0"],
	["Boese Lache",[],"",-5,[["expression",format[_EXECscript7,"adminsay1.sqf"]]],"1","1"],
	["I See You",[],"",-5,[["expression",format[_EXECscript7,"adminsay2.sqf"]]],"1","1"],
	["Furz",[],"",-5,[["expression",format[_EXECscript7,"adminsay3.sqf"]]],"1","1"],
	["Bestrafen",[],"",-5,[["expression",format[_EXECscript7,"adminsay4.sqf"]]],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
BoxMenu=[
	["",true],
	["-- Box Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Admin Box",[],"",-5,[["expression",format[_EXECscript6,"admin.sqf"]]],"1","1"],
	["Repair Box",[],"",-5,[["expression",format[_EXECscript6,"repair.sqf"]]],"1","1"],	
	["VIP Box",[],"",-5,[["expression",format[_EXECscript6,"vip.sqf"]]],"1","1"],
	["Bambi Box",[],"",-5,[["expression",format[_EXECscript6,"bambi.sqf"]]],"1","1"],
	["ALL Weapons/Items Box",[],"",-5,[["expression",format[_EXECscript6,"allweapons.sqf"]]],"1","1"],
	["(Most) Weapons Box",[],"",-5,[["expression",format[_EXECscript6,"weapons.sqf"]]],"1","1"],
	["Building Box",[],"",-5,[["expression",format[_EXECscript6,"building.sqf"]]],"1","1"],
	["Skin Box",[],"",-5,[["expression",format[_EXECscript6,"skins.sqf"]]],"1","1"],
	["Items Box",[],"",-5,[["expression",format[_EXECscript6,"items.sqf"]]],"1","1"],
	["Backpack Tent",[],"",-5,[["expression",format[_EXECscript6,"backpack.sqf"]]],"1","1"],
	["Medic Box",[],"",-5,[["expression",format[_EXECscript6,"medical.sqf"]]],"1","1"],
	["Money Box",[],"",-5,[["expression",format[_EXECscript6,"moneybox.sqf"]]],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
BoxLiteMenu=[
	["",true],
	["-- Box Menu (lite) --", [], "", -5, [["expression", ""]], "1", "0"],
	["Repair Box",[],"",-5,[["expression",format[_EXECscript6,"repair.sqf"]]],"1","1"],
	["Bambi Box",[],"",-5,[["expression",format[_EXECscript6,"bambi.sqf"]]],"1","1"],
	["Building Box",[],"",-5,[["expression",format[_EXECscript6,"building.sqf"]]],"1","1"],
	["Skin Box",[],"",-5,[["expression",format[_EXECscript6,"skins.sqf"]]],"1","1"],
	["Backpack Tent",[],"",-5,[["expression",format[_EXECscript6,"backpack.sqf"]]],"1","1"],
	["Medic Box",[],"",-5,[["expression",format[_EXECscript6,"medical.sqf"]]],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
WTMenu=[
	["",true],
	["-- Weather Menu --", [], "", -5, [["expression", ""]], "1", "0"],
	["Set Time:", [], "", -5, [["expression", ""]], "1", "0"],		
	["Midnight (no moon)",[],"",-5,[["expression",'setDate [2012, 1, 15, 0, 0]']],"1","1"],
	["Midnight (full moon)",[],"",-5,[["expression",'setDate [2012, 6, 6, 0, 0]']],"1","1"],
	["Noon",[],"",-5,[["expression",'setDate [2012, 6, 0, 12, 0]']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Set Weather:", [], "", -5, [["expression", ""]], "1", "0"],		
	["Clear",[],"",-5,[["expression",'3 setovercast 0']],"1","1"],
	["Cloudy",[],"",-5,[["expression",'3 setovercast 0.5']],"1","1"],
	["Storm",[],"",-5,[["expression",'3 setovercast 1']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Set Fog:", [], "", -5, [["expression", ""]], "1", "0"],		
	["Off",[],"",-5,[["expression",'3 setfog 0']],"1","1"],		
	["Medium",[],"",-5,[["expression",'3 setfog 0.5']],"1","1"],		
	["Maximum",[],"",-5,[["expression",'3 setfog 1']],"1","1"],		
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
EpochMenu=[
	["",true],	
	["-- Epoch Menu --", [], "", -5, [["expression", ""]], "1", "0"],	
	["Point to display code",[],"",-5,[["expression",format[_EXECscript1,"gimmecode.sqf"]]],"1","1"],
	["Point to make new key",[],"",-5,[["expression",format[_EXECscript1,"givekey.sqf"]]],"1","1"],
	["Point to lock vehicle",[],"",-5,[["expression",format[_EXECscript1,"vehicle_lock.sqf"]]],"1","1"],
	["Point to unlock vehicle",[],"",-5,[["expression",format[_EXECscript1,"vehicle_unlock.sqf"]]],"1","1"],
	["Delete Parked vehices at traders",[],"",-5,[["expression",format[_EXECscript1,"deleteparkedtradervehicles.sqf"]]],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
BaseDestructionMenu=
[
	["BaseDestruction",true],
	["SetCenter",[],"",-5,[["expression",'["center"] execVM "admintools\tools\deletebase.sqf"']],"1","1"],
	["SetRadius",[],"",-5,[["expression",'["radius"] execVM "admintools\tools\deletebase.sqf"']],"1","1"],
	["ShowDome",[],"",-5,[["expression",'["dome"] execVM "admintools\tools\deletebase.sqf"']],"1","1"],
	[format["IncludeVehicles(%1)",BD_vehicles],[],"",-5,[["expression","BD_vehicles=!BD_vehicles;"]],"1","1"],
	["DESTROY ALL Inside Dome",[],"",-5,[["expression",'["destroy"] execVM "admintools\tools\deletebase.sqf"']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
VehicleTempMenu=
[
	["",true],
	["Spawn Temporary Vehicle -- AIR",[],"",-5,[["expression",""]],"1","0"],
	["A-10",[],"",-5,[["expression",'["A10"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["MH-6J Little Bird",[],"",-5,[["expression",'["MH6J_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["CH-47F Chinook",[],"",-5,[["expression",'["CH_47F_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["UH-60M Black Hawk",[],"",-5,[["expression",'["UH60M_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["MV-22 Osprey",[],"",-5,[["expression",'["MV22"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["C-130J Super Hercules",[],"",-5,[["expression",'["C130J"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["",[],"",-5,[["expression",""]],"1","0"],
	["Next page",[],"#USER:VehicleTempMenu2",-5,[["expression",""]],"1","1"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
VehicleTempMenu2 =
[
	["",true],
	["Spawn Temporary Vehicle -- WHEELED",[],"",-5,[["expression",""]],"1","0"],
	["MTVR (Ammo)",[],"",-5,[["expression",'["MTVR_Reammo_DES_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["MTVR (Repair)",[],"",-5,[["expression",'["MTVR_Repair_DES_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["MTVR (Fuel)",[],"",-5,[["expression",'["MTVR_Refuel_DES_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Ural Truck",[],"",-5,[["expression",'["Ural_TK_CIV_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Ikarus Bus",[],"",-5,[["expression",'["Ikarus_TK_CIV_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["HMMWV (Ambulance)",[],"",-5,[["expression",'["HMMWV_Ambulance"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Military Offroad Special",[],"",-5,[["expression",'["LandRover_Special_CZ_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Mountain Bike",[],"",-5,[["expression",'["MMT_USMC"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Motorcycle",[],"",-5,[["expression",'["M1030"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["ATV",[],"",-5,[["expression",'["ATV_US_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Towing Tractor",[],"",-5,[["expression",'["TowingTractor"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Next page", [], "#USER:VehicleTempMenu3", -5, [["expression", ""]], "1", "1"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
VehicleTempMenu3 =
[
	["",true],
	["Spawn Temporary Vehicle -- TRACKED",[],"",-5,[["expression",""]],"1","0"],
	["M1A1",[],"",-5,[["expression",'["M1A1_US_DES_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["M1A2 TUSK",[],"",-5,[["expression",'["M1A2_US_TUSK_MG_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["M270 MLRS",[],"",-5,[["expression",'["MLRS_DES_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["T-34",[],"",-5,[["expression",'["T34_TK_EP1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Next page", [], "#USER:VehicleTempMenu4", -5, [["expression", ""]], "1", "1"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];
VehicleTempMenu4 =
[
	["",true],
	["Spawn Temporary Vehicle -- WATER",[],"",-5,[["expression",""]],"1","0"],
	["Fishing Boat",[],"",-5,[["expression",'["Fishing_Boat"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["PBX",[],"",-5,[["expression",'["PBX"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["RHIB",[],"",-5,[["expression",'["RHIB"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["Small boat",[],"",-5,[["expression",'["Smallboat_1"] execVM "admintools\tools\addtempvehicle.sqf"']],"1","1"],
	["", [], "", -5, [["expression", ""]], "1", "0"],
	//["Next page", [], "#USER:VehicleTempMenu5", -5, [["expression", ""]], "1", "1"],
	["Main Menu", [20], "#USER:epochmenustart", -5, [["expression", ""]], "1", "1"]
];

TeleportWaypointMenu =
[
	["",true],
	["Kamenka Docks", [2],  "", -5, [["expression", format[_EXECscript4,"Kamenka.sqf"]]], "1", "1"], 
	["Balota Airfield", [3],  "", -5, [["expression", format[_EXECscript4,"Balota.sqf"]]], "1", "1"],
	["Cherno Sniper", [4],  "", -5, [["expression", format[_EXECscript4,"ChernoSniper.sqf"]]], "1", "1"],
	["Elektro Sniper", [5],  "", -5, [["expression", format[_EXECscript4,"EletroSniper.sqf"]]], "1", "1"],
	["Skalisty Light House", [6],  "", -5, [["expression", format[_EXECscript4,"Skalisty.sqf"]]], "1", "1"],
	["Solnichniy Quarry", [7],  "", -5, [["expression", format[_EXECscript4,"Solnichniy.sqf"]]], "1", "1"],
	["Berezino Lumber Mill", [8],  "", -5, [["expression", format[_EXECscript4,"Berezino.sqf"]]], "1", "1"],			
	["Gvozdno Tavern", [9],  "", -5, [["expression", format[_EXECscript4,"Gvozdno.sqf"]]], "1", "1"],
	["Pustoshka Church", [10],  "", -5, [["expression", format[_EXECscript4,"Pustoshka.sqf"]]], "1", "1"],
	["Zelenogorsk Industrial", [11],  "", -5, [["expression", format[_EXECscript4,"Zelenogorsk.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Next Page", [12], "#USER:TeleportWaypointMenu2", -5, [["expression", ""]], "1", "1"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
TeleportWaypointMenu2 =
[
	["",true],
	["Northwest Airfield", [2],  "", -5, [["expression", format[_EXECscript4,"NWAF.sqf"]]], "1", "1"],
	["Northeast Airfield", [3],  "", -5, [["expression", format[_EXECscript4,"NEAF.sqf"]]], "1", "1"],
	["Hero Camp", [4],  "", -5, [["expression", format[_EXECscript4,"Hero.sqf"]]], "1", "1"],
	["Castle Klen", [5],  "", -5, [["expression", format[_EXECscript4,"Klen.sqf"]]], "1", "1"],
	["Stary Sobor", [7],  "", -5, [["expression", format[_EXECscript4,"Stary.sqf"]]], "1", "1"],
	["Bash Outpost", [8],  "", -5, [["expression", format[_EXECscript4,"Bash.sqf"]]], "1", "1"],
	["Bandit Den", [9],  "", -5, [["expression", format[_EXECscript4,"Bandit.sqf"]]], "1", "1"],			
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

// Adding hive vehicles - check the sqf file and change classnames as desired
HiveVehiclesMenu =
[
	["",true],
	["Apache", [2],  "", -5, [["expression", format[_EXECscript9,"apache.sqf"]]], "1", "1"],
	["T90", [3],  "", -5, [["expression", format[_EXECscript9,"T90.sqf"]]], "1", "1"],
	["Stryker", [4],  "", -5, [["expression", format[_EXECscript9,"Stryker.sqf"]]], "1", "1"],
	["UH1Y", [5],  "", -5, [["expression", format[_EXECscript9,"UH1Y.sqf"]]], "1", "1"],
	["UAZ", [6],  "", -5, [["expression", format[_EXECscript9,"UAZ.sqf"]]], "1", "1"],
	["Chinook", [7],  "", -5, [["expression", format[_EXECscript9,"chinook.sqf"]]], "1", "1"],
	["HMVEE", [8],  "", -5, [["expression", format[_EXECscript9,"HMV.sqf"]]], "1", "1"],
	["BTR90", [9],  "", -5, [["expression", format[_EXECscript9,"BTR90.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Next page", [12], "#USER:HiveVehiclesMenu2", -5, [["expression", ""]], "1", "1"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
 
HiveVehiclesMenu2 =
[
	["",true],
	["Merlin", [2],  "", -5, [["expression", format[_EXECscript9,"Merlin.sqf"]]], "1", "1"],
	["Mi24", [3],  "", -5, [["expression", format[_EXECscript9,"Mi24_D.sqf"]]], "1", "1"],
	["Warrior", [4],  "", -5, [["expression", format[_EXECscript9,"warrior.sqf"]]], "1", "1"],
	["Repair", [5],  "", -5, [["expression", format[_EXECscript9,"kamazrepair.sqf"]]], "1", "1"],
	["Refuel", [6],  "", -5, [["expression", format[_EXECscript9,"KamazRefuel.sqf"]]], "1", "1"],
	["Reammo", [7],  "", -5, [["expression", format[_EXECscript9,"KamazReammo.sqf"]]], "1", "1"],
	["HMVEE", [8],  "", -5, [["expression", format[_EXECscript9,"HMV.sqf"]]], "1", "1"],
	["BTR90", [9],  "", -5, [["expression", format[_EXECscript9,"BTR90.sqf"]]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

BuildingsMenu =
[
	["",true],
	["TP Shitter(Temp)", [2],  "", -5, [["expression", format[_EXECscript8,"Shitter.sqf"]]], "1", "1"],		
	["H-Bar 10x (Temp)", [3],  "", -5, [["expression", format[_EXECscript8,"HBarrier1.sqf"]]], "1", "1"],
	["H-Bar 10x Tall(Temp)", [4],  "", -5, [["expression", format[_EXECscript8,"HBarrier2.sqf"]]], "1", "1"],
	["Fort Watchtower(Temp)", [5],  "", -5, [["expression", format[_EXECscript8,"watchtower.sqf"]]], "1", "1"],		
	["Barracks(Temp)", [6],  "", -5, [["expression", format[_EXECscript8,"Barrack.sqf"]]], "1", "1"],		
	["Fort Barracks(Temp)", [7],  "", -5, [["expression", format[_EXECscript8,"Fort_Barracks.sqf"]]], "1", "1"],				
	["Fort Nest M240(Temp)", [8],  "", -5, [["expression", format[_EXECscript8,"Fort_Nest.sqf"]]], "1", "1"],				
	["Land Nest(Temp)", [9],  "", -5, [["expression", format[_EXECscript8,"Land_Nest.sqf"]]], "1", "1"],				
	["Depot(Temp)", [10],  "", -5, [["expression", format[_EXECscript8,"Depot.sqf"]]], "1", "1"],				
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Next Page", [12], "#USER:BuildingsMenu2", -5, [["expression", ""]], "1", "1"],				
	["Exit", [14], "", -3, [["expression", ""]], "1", "1"]
];

BuildingsMenu2 =
[
	["",true],
	["Water Well(Temp)", [2],  "", -5, [["expression", format[_EXECscript8,"Land_pumpa.sqf"]]], "1", "1"],	
	["Land Radar(Temp)", [3],  "", -5, [["expression", format[_EXECscript8,"Land_radar.sqf"]]], "1", "1"],				
	["Mortar(Temp)", [4],  "", -5, [["expression", format[_EXECscript8,"Mortar.sqf"]]], "1", "1"],				
	["Artillery(Temp)", [5],  "", -5, [["expression", format[_EXECscript8,"Artillery.sqf"]]], "1", "1"],	
	["Barn Short(Temp)", [6],  "", -5, [["expression", format[_EXECscript8,"BarnShort.sqf"]]], "1", "1"],				
	["Red Gate(Temp)", [7],  "", -5, [["expression", format[_EXECscript8,"redgate.sqf"]]], "1", "1"],				
	["Ammo Box(Temp)", [8],  "", -5, [["expression", format[_EXECscript8,"superweapons.sqf"]]], "1", "1"],	
	["Weed Plant(Temp)", [8],  "", -5, [["expression", format[_EXECscript8,"weed.sqf"]]], "1", "1"],	
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

termenu = 
[
	["", true],	
	["Select terrain level:", [-1], "", -5, [["expression", ""]], "1", "0"], 	
	["Very High", [2], "", -5, [["expression", "setTerrainGrid 3.125;"]], "1", "1"],  
	["High", [3], "", -5, [["expression", "setTerrainGrid 6.25;"]], "1", "1"],  
	["Normal", [4], "", -5, [["expression", "setTerrainGrid 12.5;"]], "1", "1"],  
	["Low", [5], "", -5, [["expression", "setTerrainGrid 25;"]], "1", "1"],  
	["Very Low", [6], "", -5, [["expression", "setTerrainGrid 50;"]], "1", "1"],  
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"] 
];

distmenu = 
[
	["", true],	
	["Select rendering distance:", [-1], "", -5, [["expression", ""]], "1", "0"], 
	["600", [2], "", -5, [["expression", "setViewDistance 600;"]], "1", "1"],  	
	["900", [2], "", -5, [["expression", "setViewDistance 900;"]], "1", "1"],  
	["1000", [3], "", -5, [["expression", "setViewDistance 1000;"]], "1", "1"],  
	["1200", [4], "", -5, [["expression", "setViewDistance 1200;"]], "1", "1"],  
	["1500", [5], "", -5, [["expression", "setViewDistance 1500;"]], "1", "1"],  
	["2000", [5], "", -5, [["expression", "setViewDistance 2000;"]], "1", "1"],  
	["2250", [6], "", -5, [["expression", "setViewDistance 2250;"]], "1", "1"],  
	["2500", [7], "", -5, [["expression", "setViewDistance 2500;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Back", [12], "", -4, [["expression", ""]], "1", "1"],	
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"] 
];

AdminFunMenu =
[
	["",true],
	["Box - Bambi (Map)", [2], "", -5, [["expression", format[_EXECscript10,"parabox1.sqf"]]], "1", "1"],	
	["Box - Food-Drinks (Map)", [2], "", -5, [["expression", format[_EXECscript10,"parabox2.sqf"]]], "1", "1"],	
	["Box - Medics (Map)", [2], "", -5, [["expression", format[_EXECscript10,"parabox3.sqf"]]], "1", "1"],	
	["Box - Repair (Map)", [2], "", -5, [["expression", format[_EXECscript10,"parabox4.sqf"]]], "1", "1"],	
	["Box - Stanag (Map)", [2], "", -5, [["expression", format[_EXECscript10,"parabox5.sqf"]]], "1", "1"],	
	["Box - M9SD (Map)", [2], "", -5, [["expression", format[_EXECscript10,"parabox6.sqf"]]], "1", "1"],
	["Es werde Licht", [2], "", -5, [["expression", format[_EXECscript10,"light.sqf"]]], "1", "1"],
	["Guard - Survivor", [2], "", -5, [["expression", format[_EXECscript10,"guard.sqf"]]], "1", "1"],	
	["Guard2 - General", [2], "", -5, [["expression", format[_EXECscript10,"guard2.sqf"]]], "1", "1"],
	["Deltakill (Map)", [],"",-5,[["expression",format[_EXECscript1,"deathfromabove.sqf"]]],"1","1"],
	["Deltakill2 (Map)", [],"",-5,[["expression",format[_EXECscript1,"deltakill.sqf"]]],"1","1"],	
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:epochmenustart";
