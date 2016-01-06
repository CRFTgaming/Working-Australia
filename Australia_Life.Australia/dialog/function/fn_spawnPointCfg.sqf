#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side", "_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		if(__GETC__(life_coplevel) == 8) then // Vehicles available to cops level 8 or higher.
   		{
   			_return = [
   				["cop_spawn_5","Sheriff's Alice Springs HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
   				["cop_spawn_8","Sheriff's Broken Hill HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
   				["cop_spawn_3","Adelaide Joint HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
   			];
   		};

   		if(__GETC__(life_coplevel) == 9) then // Vehicles available to cops level 9 or higher.
   		{
   			_return = [
   				["cop_spawn_5","Sheriff's Alice Springs HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
   				["cop_spawn_8","Sheriff's Broken Hill HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
   				["cop_spawn_3","Adelaide Joint HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
   			];
   		};

   		if(__GETC__(life_coplevel) == 10) then // Vehicles available to cops level 10 or higher.
   		{
   			_return = [
   				["police_jail_3","Department of Corrections","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
   				["cop_doc_1","DOC Willcania HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
   				["cop_doc_2","DOC Sydney HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
   			];
   		};

   		if(__GETC__(life_coplevel) < 8) then // Vehicles available to cops level 1 or higher.
   		{
			_return = [
				["cop_spawn_1","Sydney HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","Melbourn HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
				["cop_spawn_3","Adelaide HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_4","Darwin HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_6","Brisbane HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_7","Launceston HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_9","SWAT HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
				["cop_spawn_10","Perth HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
		};
	};
	
	case civilian:
	{
		// Rebel faction.
		if(license_civ_rebel && playerSide == civilian) then {
			_return = [
				["Rebelop","Rbl. Airfield","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["Rebelop_2","Southern Rebel Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_1","Sydney","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["Rebelop_1","Northern Rebel Compound","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};


		// Civ faction.
		if(!license_civ_rebel && playerSide == civilian) then {
			_return = [
				["civ_spawn_1","Sydney","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_2","Melbourne","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_3","Alice Springs","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_4","Perth","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_5","Darwin","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_6","Adelaide","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_7","Brisbane","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["civ_spawn_8","Launceston","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};

		// See if the player is in a Gang.
               /* if (count life_gangData != 0) then {
			private["_gangid", "_gangname"];
			_gangid = (life_gangData select 0);
			_gangname = (life_gangData select 2);

			// Add spawn-points based on the gang id.
			switch(_gangid) do {
				case 1: {
					// -dR- clan.
                                        hint "Welcome drclan!";
					_return set[count _return,["drclan_player_spawn","-dR- Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 2: {
					// Blue moon clan.
                                        hint "Welcome Blue Moon";
					_return set[count _return,["bluemoone_spawn_1","Blue Moon Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				/*case 26: {
					// Server Jerks.
                                        hint "Welcome Server Jerks";
					_return set[count _return,["serverjerks_player_spawn","Server Jerks Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 5: {
					// Dirty Old Bastards.
                                        hint "Welcome Dirty Old Bastards!";
					_return set[count _return,["DoB_player_spawn","Dirty Ole Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 3: {
					// Academi.
                                        hint "Welcome Academi!";
					_return set[count _return,["academi_spawn_1","Academi Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				case 4: {
					// JSOC_spawn.
                                        hint "Welcome JSOC!";
					_return set[count _return,["JSOC_player_spawn","JSOC Base", "\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
				};
				default {
					hint format['Gang %1 (id %2) does not have a base spawn-point.', _gangname, _gangid];
				};
			}; // switch(_gangid)
		};

		////////////////////////////////
		// Explicit rules for donors. //
		////////////////////////////////
/*
		// Donor spawn 1.
                if((getPlayerUID player) in ["76561198083157429", "76561198131611076", "76561198037884192",
					     "76561198075884876", "76561198040360674", "76561198124421618",
					     "76561198019141456", "76561198032776666"]) then {
                        _return = _return + [
                                ["donor_spawn_1","ToC Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };

		// Donor spawn 2.
                if((getPlayerUID player) in ["76561198032776666", "76561198037884192"]) then {
                        _return = _return + [
                                ["donor_spawn_2","Gunz's Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };

		// Donor spawn 3.
                if((getPlayerUID player) in ["76561197989754656", "76561198105556705"]) then {
                        _return = _return + [
                                ["donor_spawn_3","Frogger's Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };

		// CDL base.
                if((getPlayerUID player) in ["76561198032776666", "76561198017849083", "76561198115058177",
					     "76561198022746102", "76561198040050837", "76561198064204613",
					     "76561198016555690", "76561198067134041", "76561198038286017",
					     "76561197990552034", "7656119788151600", "76561198021956938",
					     "76561198028017369", "76561197960270400", "76561198137704344",
					     "76561198043182095", "76561198137704344", "76561198127000884",
					     "76561198067899896", "16561198001491362", "76561198000366002"]) then {
                        _return = _return + [
                                ["donor_cdl","CDL Base","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
                        ];
                };*/

	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Sydney Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Melbourne Medical","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Darwin Medical","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","Perth Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_5","Adelaide Medical","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_6","Brisbane Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_7","Alice Springs Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_8","Hobart Medical","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
