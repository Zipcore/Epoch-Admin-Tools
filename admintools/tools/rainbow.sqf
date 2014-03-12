if (isnil ("SmokeOn")) then 
{
    SmokeOn = 0;
};

if (SmokeOn==0) then
{
    SmokeOn=1;
    hint "Smoke is ON!";
    
    _sCode = 'while {SmokeOn==1} do {';
    _sCode = _sCode + 'Flare = "SmokeShellblue" createVehicle position vehicle player;Flare attachTo [vehicle player,[0,0,0]];';
    _sCode = _sCode + 'Flare1 = "Smokeshellpurple" createVehicle position vehicle player;Flare1 attachTo [vehicle player,[0.1,0,0]];';
    _sCode = _sCode + 'Flare2 = "Smokeshellgreen" createVehicle position vehicle player;Flare2 attachTo [vehicle player,[0.2,0,0]];';
    //_sCode = _sCode + 'Flare3 = "SmokeShellRed" createVehicle position vehicle player;Flare8 attachTo [vehicle player,[0.3,0,0]];';
    _sCode = _sCode + 'sleep 28;};';
    
    [] spawn compile _sCode;
}
else
{
    sleep 0.5;
    deleteVehicle Flare;
    deleteVehicle Flare1;
    deleteVehicle Flare2;
    //deleteVehicle Flare3;
    SmokeOn=0;
    hint "Smoke is OFF!";
};