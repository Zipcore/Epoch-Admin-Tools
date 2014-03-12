_aim = cursorTarget;
if (_aim isKindOf "LandVehicle" OR _aim isKindOf "Helicopter" OR _aim isKindOf "Plane" OR _aim isKindOf "Building") then
{
	_aim setDamage 1.1;
};