_classname = "Land_fortified_nest_big";
_posplr = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 0.0];
_dirplr = getDir player;

_object = createVehicle [_classname, _posplr, [], 0, "CAN_COLLIDE"];
_object setVariable ["Sarge",1,true];
_object setDir _dirplr;
player reveal _object;

dayzPublishVeh = [_object,[_dirplr,_posplr],_classname,false,dayz_characterID];
publicVariableServer  "dayzPublishVeh";		