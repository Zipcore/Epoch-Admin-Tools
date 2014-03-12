_light = "#lightpoint" createVehicleLocal [(getPos player select 0), (getPos player select 1), ((getPos player select 2) + 500)];
_light setLightAmbient [15, 15, 15];
_light setLightColor [15, 12, 10];
_light setLightBrightness 9;
setaperture -1;
_light attachTo [(vehicle player), [0,0,500]];