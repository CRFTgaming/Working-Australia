/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Start playing the siren for medics.
	
	*NOTE I DO NOT HAVE A SOUND FOR THIS BUT I"M LEAVING THE CODE HERE FOR OTHER PEOPLE TO ADD IT*.
*/


private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "sirenA"}) exitWith {};

while {true} do
{
	if(!(_vehicle getVariable "sirenA")) exitWith {};
	if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["sirenI",false,true]};
	if(!alive _vehicle) exitWith {};
	if(isNull _vehicle) exitWith {};
	_vehicle say3D "Beedo";
	sleep 15.0;
	if(!(_vehicle getVariable "sirenA")) exitWith {};
};
