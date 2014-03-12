closeDialog 0;
titleText ["Click On The Map", "PLAIN DOWN"]; titleFadeOut 4;
carepkg={
	onMapSingleClick hint format ["CarePackage Called In @\n%1" ,_pos];
	for "_i" from 0 to 0 do
	{
		_pos1 =  [(_pos select 0), (_pos select 1), 100];
		sleep 1;

		_box = "BAF_VehicleBox" createVehicle _pos1;
		_smoke        = "SmokeshellGreen" createVehicle position _box;
		_smoke attachto [_box, [0,0,0]];
		_box attachTo [_chute, [0,0,0]];
		
		clearweaponcargoGlobal _box;
		clearmagazinecargoGlobal _box;

		_box addWeaponCargoGlobal ["AK_74", 1];
		_box addWeaponCargoGlobal ["ItemKnife", 1];
		_box addWeaponCargoGlobal ["ItemMatchbox", 1];
		_box addWeaponCargoGlobal ["ItemMap", 1];
		_box addWeaponCargoGlobal ["LeeEnfield", 1];

		_box addMagazineCargoGlobal ["10x_303", _4];
		_box addMagazineCargoGlobal ["30Rnd_545x39_AK", 4];
		_box addMagazineCargoGlobal ["FoodSteakCooked", 2];
		_box addMagazineCargoGlobal ["ItemAntibiotic", 1];
		_box addMagazineCargoGlobal ["ItemBandage", 4];
		_box addMagazineCargoGlobal ["ItemBloodbag", 2];
		_box addMagazineCargoGlobal ["ItemEpinephrine", 1];
		_box addMagazineCargoGlobal ["ItemHeatPack", 1];
		_box addMagazineCargoGlobal ["ItemMorphine", 2];
		_box addMagazineCargoGlobal ["ItemPainkiller", 3];
		_box addMagazineCargoGlobal ["ItemSodaMdew", 3];
		_box addMagazineCargoGlobal ["ItemTent", 1];

		sleep 1;
		_chute = createVehicle ["ParachuteC", [(_pos1) select 0,(_pos1) select 1], [], 0, "FLY"];

		[]spawn
		sleep 1;
		vehC = nearestObjects [vehicle player, ["BAF_VehicleBox"], 150];
		vehD = nearestObjects [vehicle player, ["ParachuteC"], 500];
		veh = vehC select 0;
		chute = vehD select 0;
		veh attachTo [chute, [0,0,1.5]];
	};

	onMapSingleClick "";
	openMap [false, false];
};
 
openMap [true, false];
onMapSingleClick "[_pos select 0, _pos select 1, _pos select 2] call carepkg";