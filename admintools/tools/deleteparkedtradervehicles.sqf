private ["_clearAreas","_radius","_vehicles","_objectID","_objectUID"];

_clearAreas = [zonestary, zonebash, zoneklen]; // use sensor names or positions like [x,y,z]
_radius = 100;

{
	_vehicles = _x nearObjects ["AllVehicles", _radius];
	{
		_objectID = _x getVariable ["ObjectID", "0"];
		_objectUID = _x getVariable ["ObjectUID", "0"];
		[_objectID, _objectUID, "CLEAR_AREA"] call server_deleteObj;
		deleteVehicle _x;
		diag_log format ["CLEAR_AREA: removed vehicle %1 (%2) at position %3", typeOf _x, _objectID, position _x];
	} forEach _vehicles;
} forEach _clearAreas;