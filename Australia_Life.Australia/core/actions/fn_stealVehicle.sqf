/*
File: fn_stealVehicle.sqf
Author: Kevin Webb
Description: Allows the player to put a stolen vehicle in his garage.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_color","_check"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_price = _price*1.5;
if(life_atmcash < _price) exitWith {hint format["We require a fee of %1 to make that vehicle yours",_price]; };
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = _nearVehicles select _vehicle;
if(isNull _vehicle) exitWith {};
_check = false; 
{if(player distance _x < 200 && side _x == west) then { _check = true; };} forEach playableUnits; 
if(_check) exitWith {hint "The cops are too close to complete this action!";};
if(typeOf _vehicle == "B_MRAP_01_F") exitWith {hint "Unfortunately, you can not make that type of vehicle yours! You will have to sell it instead."; };
_color = 0;
if(typeOf _vehicle in["C_Offroad_01_F"]) then { _color = floor(random 8); };
while {typeOf _vehicle in["C_Offroad_01_F"] && _color in [9,10]} do {_color = 9; };
if(typeOf _vehicle in["C_Hatchback_01_F"]) then { _color = floor(random 6); };
if(typeOf _vehicle in["C_Hatchback_01_sport_F"]) then { _color = floor(random 5); };
while {typeOf _vehicle in["C_Hatchback_01_sport_F"] && _color in [6,13,14]} do {_color = 14; };
if(typeOf _vehicle in["C_SUV_01_F"]) then { _color = floor(random 3); };
while {typeOf _vehicle in["C_SUV_01_F"] && _color in [4,8]} do {_color = 4; };
if(typeOf _vehicle in["B_Quadbike_01_F"]) then { _color = floor(random 8); };
hint format["You have been charged %1 for this transaction and the vehicle will be added to your garage after the next restart.",_price];
["atm","take",_price] call life_fnc_updateCash;
[[_vehicle],"TON_fnc_vehicleDead",false,false] spawn life_fnc_MP;
sleep 0.05;
[[(getPlayerUID player),playerSide,_vehicle,_color,1],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
[[getPlayerUID player,profileName,"490"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
closeDialog 0;
sleep 0.5;
if(!isNil "_vehicle" && !isNull _vehicle) then { deleteVehicle _vehicle; };