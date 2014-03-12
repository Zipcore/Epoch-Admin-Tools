closeDialog 0;
titleText ["Click On The Map", "PLAIN DOWN"]; titleFadeOut 4;
carepkg={
	onMapSingleClick hint format ["CarePackage Called In @\n%1" ,_pos];
	for "_i" from 0 to 0 do
	{
		_pos1 =  [(_pos select 0), (_pos select 1), 100];
		sleep 1;

		_box = "BAF_VehicleBox" createVehicle _pos1;
		_smoke        = "Smokeshell" createVehicle position _box;
		_smoke attachto [_box, [0,0,0]];
		_box attachTo [_chute, [0,0,0]];
		
		clearweaponcargoGlobal _box;
		clearmagazinecargoGlobal _box;

		_box addMagazineCargoGlobal ["PartEngine", 2];
		_box addMagazineCargoGlobal ["PartFueltank", 2];
		_box addMagazineCargoGlobal ["PartGeneric", 4];
		_box addMagazineCargoGlobal ["PartGlass", 6];
		_box addMagazineCargoGlobal ["ItemJerrycan", 4];
		_box addMagazineCargoGlobal ["PartWheel", 4];
		_box addMagazineCargoGlobal ["PartVRotor", 2];
		_box addWeaponCargoGlobal ["ItemToolbox", 2];

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