_classname = "MedBox0";
_dir = getdir player;
_pos = getposATL player;
_pos = [(_pos select 0)+1*sin(_dir),(_pos select 1)+1*cos(_dir), (_pos select 2)];
_box = createVehicle [_classname, _pos, [], 0, "CAN_COLLIDE"];
_box setDir _dir;
_box setposATL _pos;

_itemn = 10;

clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearBackpackCargoGlobal _box;

_box addMagazineCargoGlobal ["ItemGoldBar10oz", _itemn * 5];
_box addMagazineCargoGlobal ["ItemGoldBar", _itemn * 5];
_box addMagazineCargoGlobal ["ItemSilverBar10oz", _itemn * 5];
_box addMagazineCargoGlobal ["ItemSilverBar", _itemn * 5];
_box addMagazineCargoGlobal ["ItemCopperBar10oz", _itemn * 5];
_box addMagazineCargoGlobal ["ItemCopperBar", _itemn * 5];
_box addMagazineCargoGlobal ["ItemBriefcase100oz", _itemn * 20];
_box addMagazineCargoGlobal ["ItemSapphire", _itemn * 20];
_box addMagazineCargoGlobal ["ItemRuby", _itemn * 20];
_box addMagazineCargoGlobal ["ItemObsidian", _itemn * 20];
_box addMagazineCargoGlobal ["ItemKiloHemp", _itemn * 20];
_box addMagazineCargoGlobal ["ItemEmerald", _itemn * 20];
_box addMagazineCargoGlobal ["ItemAmethyst", _itemn * 20];






// Skins
_box addMagazineCargoGlobal ["Skin_Rocket_DZ", _itemn];

_box addWeaponCargoGlobal ["M4A1_HWS_GL_camo", _itemn];
_box addMagazineCargoGlobal ["30Rnd_556x45_Stanag", _itemn * 4];

_box addWeaponCargoGlobal ["M9SD", _itemn];
_box addMagazineCargoGlobal ["15Rnd_9x19_M9SD", _itemn * 4];


titleText [format["Money Box spawned nearby."],"PLAIN DOWN"]; titleFadeOut 4;

delaymenu = 
[
	["",true],
	["Select delay", [-1], "", -5, [["expression", ""]], "1", "0"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["1 min", [2], "", -5, [["expression", "SelectDelay=60;DelaySelected=true;"]], "1", "1"],
	["2 min", [3], "", -5, [["expression", "SelectDelay=120;DelaySelected=true;"]], "1", "1"],
	["3 min", [4], "", -5, [["expression", "SelectDelay=180;DelaySelected=true;"]], "1", "1"],
	["4 min", [5], "", -5, [["expression", "SelectDelay=240;DelaySelected=true;"]], "1", "1"],
	["5 min", [6], "", -5, [["expression", "SelectDelay=300;DelaySelected=true;"]], "1", "1"],
	["10 min", [7], "", -5, [["expression", "SelectDelay=600;DelaySelected=true;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["No timer", [11], "", -5, [["expression", "DelaySelected=false;"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [-1], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:delaymenu";

WaitUntil{DelaySelected};
DelaySelected=false;

sleep 3;
titleText [format["Money Box will disappear in %1 seconds.",SelectDelay],"PLAIN DOWN"]; titleFadeOut 4;

sleep SelectDelay;

deletevehicle _box;

titleText [format["Money Box disappeared."],"PLAIN DOWN"]; titleFadeOut 4;