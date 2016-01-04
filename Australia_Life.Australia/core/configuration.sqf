#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_sirenI_active = false;
life_sirenA_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 2; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_drink = 0;
life_enslaved = false;
life_frozen = false;
life_nlrtimer_stop = false;
life_nlrtimer_running = false;
//Insert EarPlugs
life_fadeSound = false;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_sirenI_active = false;
life_sirenA_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
//player event pay-check multiplier
life_multiply = 1;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;
life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = (life_multiply * 500); //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 100000; //Starting Bank Money
		life_paycheck = (life_multiply * 3500); //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 100000;
		life_paycheck = (life_multiply * 8000);
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["Land_Pod_Heli_Transport_04_ammo_F", "Land_Pod_Heli_Transport_04_covered_F", "Land_Pod_Heli_Transport_04_bench_F", "Land_Pod_Heli_Transport_04_box_F", "Land_Pod_Heli_Transport_04_fuel_F", "Land_Pod_Heli_Transport_04_medevac_F", "Land_Pod_Heli_Transport_04_repair_F", "B_Slingload_01_Cargo_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_cornmeal",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_moonshine",
	"life_inv_mash",
	"life_inv_zipties",
	"life_inv_handcuffs",
	"life_inv_cotton",
	"life_inv_APDuniform",
	"life_inv_speedbomb",
	"life_inv_uwsl",
	"life_inv_extacy",
	"life_inv_lsdx",
	"life_inv_methx",
	"life_inv_rso",
	"life_inv_bho",
	"life_inv_hash",
	"life_inv_heroinx"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"],
	["license_civ_cotton","civ"],
	["license_civ_home","civ"],
	["license_civ_bountyh", "civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;
//proficiency



life_prof = [
["Oil_Prof","civ"],
["Iron_Prof","civ"],
["Copper_Prof","civ"],
["Heroin_Prof","civ"],
["Cannabis_Prof","civ"],
["Cocaine_Prof","civ"],
["Salt_Prof","civ"],
["Fruit_Prof","civ"],
["Diamond_Prof","civ"],
["Rock_Prof","civ"],
["Sand_Prof","civ"],
["Brewing_Prof","civ"],
["Distilling_Prof","civ"],
["Bottling_Prof","civ"],
["Citizen_Prof","civ"],
["Criminal_Prof","civ"],
["Shining_Prof","civ"],
["Fishing_Prof","civ"],
["Thief_Prof","civ"],
//police jobs
["Ticket_Prof","cop"],
["Arrest_Prof","cop"],
["Impound_Prof","cop"],
["Hero_Prof","cop"],
["Rogue_Prof","cop"],
//med jobs
["Revive_Prof","med"]
];
{missionNamespace setVariable[(_x select 0),[0,0]];} foreach life_prof;



life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500],["moonshine",9000],["bottledshine",11000],["mash",5000]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",2],
	["heroinu",65],
	["heroinp",65],
	["salema",65],
	["ornate",60],
	["mackerel",195],
	["tuna",720],
	["mullet",270],
	["catshark",320],
	["rabbit",5],
	["oilp",55],
	["turtle",3000],
	["water",2],
	["coffee",2],
	["turtlesoup",5000],
	["donuts",7],
	["marijuana",45],
	["tbacon",9],
	["lockpick",150],
	["pickaxe",30],
	["redgull",5],
	["peach",20],
	["cocaine",60],
	["cocainep",60],
	["diamond",75],
	["diamondc",75],
	["iron_r",50],
	["copper_r",45],
	["salt_r",50],
	["glass",60],
	["fuelF",90],
	["spikeStrip",800],
	["cement",45],
	["goldbar",120000],
	["bottledshine",50], 
	["bottledwhiskey",25], 
	["bottledbeer",20], 
	["moonshine",50], 
	["whiskey",25], 
	["beerp",20], 
	["mash",0], 
	["rye",0], 
	["hops",0], 
	["yeast",0], 
	["cornmeal",0], 
	["bottles",0],
	["zipties",10],
	["handcuffs",10],
	["cotton",0],
	["APDuniform",0],
	["speedbomb",300000],
	["uwsl",5000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",2],
	["rabbit",2],
	["salema",65],
	["ornate",60],
	["mackerel",195],
	["tuna",720],
	["mullet",270],
	["catshark",320],
	["water",2],
	["turtle",3000],
	["turtlesoup",5000],
	["donuts",7],
	["coffee",2],
	["tbacon",9],
	["lockpick",150],
	["pickaxe",30],
	["redgull",5],
	["fuelF",90],
	["peach",35],
	["spikeStrip",800],
	["blastingcharge",55000],
	["boltcutter",15000],
	["defusekit",4500],
	["storagesmall",150000],
	["storagebig",300000],
	["bottledshine",65], 
	["bottledwhiskey",40], 
	["bottledbeer",35], 
	["moonshine",65], 
	["whiskey",40], 
	["beerp",35], 
	["cornmeal",20], 
	["mash",30], 
	["bottles",10],
	["zipties",10],
	["handcuffs",10],
	["cotton",0],
	["APDuniform",0],
	["speedbomb",500000],
	["uwsl",10000],
	["cocainep",60],
	["marijuana",45],
	["extacy",60],
	["lsdx",60],
	["methx",65],
	["rso",45],
	["bho",45],
	["hash",45],
	["heroinp",65]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Kart_01_Blu_F",250],
	["C_Kart_01_Fuel_F",250],
	["C_Kart_01_Red_F",250],
	["C_Kart_01_Vrana_F",250],
	["C_Hatchback_01_F",400],
	["I_Truck_02_medical_F",1250],
	["O_Truck_03_medical_F",2250],
	["B_Truck_01_medical_F",3000],
	["O_Heli_Light_02_unarmed_F",3750],
	["dezkit_b206_ems",4000],
	["EC635_SAR",4000],
	["dezkit_b206_rescue",4000],
	["O_Heli_Transport_04_medevac_black_F",5000],
	["C_Van_01_transport_F",1250],
	["A3L_F350Black",2250],
	["A3L_F350Blue",2250],
	["A3L_F350Red",2250],
	["A3L_F350White",2250],
	["A3L_F350Mex",2250],
	["C_Van_01_Box_F",1250],
	["C_Van_01_fuel_F",1250],
	["B_Truck_01_transport_F",2000],
	["I_Truck_02_transport_F",2000],
	["O_Truck_03_transport_F",2000],
	["I_Truck_02_covered_F",2500],
	["O_Truck_03_covered_F",2500],
	["B_Truck_01_fuel_F",3750],
	["I_Truck_02_fuel_F",3750],
	["O_Truck_03_fuel_F",3750],
	["B_Truck_01_Repair_F",4750],
	["O_Truck_03_repair_F",4750],
	["I_Truck_02_box_F",4750],
	["B_Truck_01_box_F",7500],
	["B_Truck_01_mover_F",5000],
	["O_Truck_03_device_F",10000],
	["GNT_C185",7500],
	["IVORY_CRJ200_1",20000],
	["IVORY_ERJ135_1",17500],
	["USAF_C17",40000],
	["usaf_c5",50000],
	["sab_C130_J",32500],
	["sab_C130_JT",32500],
	["sab_c130_JC",32500],
	["sab_C130_FA",32500],
	["sab_C130_CG",32500],
	["sab_C130_CSP",32500],
	["sab_L100_AL",32500],
	["bwi_a3_t6a",12500],
	["bwi_a3_t6a_2",12500],
	["bwi_a3_t6a_3",12500],
	["bwi_a3_t6a_4",12500],
	["bwi_a3_t6a_5",12500],
	["bwi_a3_t6a_6",12500],
	["bwi_a3_t6a_7",12500],
	["O_G_Quadbike_01_F",325],
	["I_G_Offroad_01_F",750],
	["O_MRAP_02_F",900],
	["USAF_HH60G",5265],
	["O_G_Offroad_01_armed_F",3500],
	["O_MRAP_02_hmg_F",5000],
	["O_MRAP_02_gmg_F",7500],
	["O_Truck_03_ammo_F",7500],
	["O_Heli_Light_02_F",12500],
	["B_Heli_Transport_03_unarmed_green_F",15000],
	["C_Offroad_01_F",200],
	["C_SUV_01_F",175],
	["B_Truck_01_covered_F",225],
	["C_Hatchback_01_sport_F",175],
	["B_MRAP_01_F",200],
	["B_Quadbike_01_F",75],
	["I_MRAP_03_F",375],
	["B_G_Offroad_01_armed_F",750],
	["B_APC_Tracked_01_CRV_F",7500],
	["B_APC_Tracked_01_rcws_F",7500],
	["dezkit_b206_fl",7500],
	["EC635",12500],
	["USAF_CV22",10000],
	["USAF_HH60GMED",10000],
	["ARMSCor_A109_Civ",10000],
	["dezkit_b206_ls",10000],
	["Land_Pod_Heli_Transport_04_ammo_F", 250],
	["Land_Pod_Heli_Transport_04_covered_F", 250],
	["Land_Pod_Heli_Transport_04_bench_F", 250],
	["Land_Pod_Heli_Transport_04_fuel_F", 250],
	["Land_Pod_Heli_Transport_04_repair_F", 250],
	["C_Heli_Light_01_civil_F",500],
	["I_Heli_Light_03_unarmed_F",1250],
	["O_Heli_Transport_04_bench_F",5000],
	["B_Heli_Transport_03_F",6000],
	["I_Heli_Transport_02_F",4000],
	["dezkit_b206_fbi",4000],
	["I_Heli_light_03_unarmed_F",5000],
	["B_Heli_Light_01_F",375],
	["B_Heli_Transport_01_F",1000],
	["C_Rubberboat",250],
	["A3L_JetSki",250],
	["C_Boat_Civil_01_F",1100],
	["D41_Trawler",5000],
	["A3L_Ship",2500],
	["Burnes_MK10_1",7500],
	["B_Boat_Transport_01_F",150],
	["C_Boat_Civil_01_police_F",1000],
	["B_SDV_01_F",1500],
    ["C_Van_01_Fuel_F",1000],    
	["B_Heli_Transport_01_camo_F",5250],
	["O_Heli_Transport_04_F",12500],
	["B_Heli_Transport_03_unarmed_F",2250],
	["O_Heli_Transport_04_box_F",12500],
	["C_Offroad_01_repair_F",0]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",250],
	["C_Kart_01_Fuel_F",250],
	["C_Kart_01_Red_F",250],
	["C_Kart_01_Vrana_F",250],
	["C_Hatchback_01_F",400],
	["I_Truck_02_medical_F",1250],
	["O_Truck_03_medical_F",2250],
	["B_Truck_01_medical_F",3000],
	["O_Heli_Light_02_unarmed_F",3750],
	["dezkit_b206_ems",4000],
	["EC635_SAR",4000],
	["dezkit_b206_rescue",4000],
	["O_Heli_Transport_04_medevac_black_F",5000],
	["C_Van_01_transport_F",1250],
	["A3L_F350Black",2250],
	["A3L_F350Blue",2250],
	["A3L_F350Red",2250],
	["A3L_F350White",2250],
	["A3L_F350Mex",2250],
	["C_Van_01_Box_F",1250],
	["C_Van_01_fuel_F",1250],
	["B_Truck_01_transport_F",2000],
	["I_Truck_02_transport_F",2000],
	["O_Truck_03_transport_F",2000],
	["I_Truck_02_covered_F",2500],
	["O_Truck_03_covered_F",2500],
	["B_Truck_01_fuel_F",3750],
	["I_Truck_02_fuel_F",3750],
	["O_Truck_03_fuel_F",3750],
	["B_Truck_01_Repair_F",4750],
	["O_Truck_03_repair_F",4750],
	["I_Truck_02_box_F",4750],
	["B_Truck_01_box_F",7500],
	["B_Truck_01_mover_F",5000],
	["O_Truck_03_device_F",10000],
	["GNT_C185",7500],
	["IVORY_CRJ200_1",20000],
	["IVORY_ERJ135_1",17500],
	["USAF_C17",40000],
	["usaf_c5",50000],
	["sab_C130_J",32500],
	["sab_C130_JT",32500],
	["sab_c130_JC",32500],
	["sab_C130_FA",32500],
	["sab_C130_CG",32500],
	["sab_C130_CSP",32500],
	["sab_L100_AL",32500],
	["bwi_a3_t6a",12500],
	["bwi_a3_t6a_2",12500],
	["bwi_a3_t6a_3",12500],
	["bwi_a3_t6a_4",12500],
	["bwi_a3_t6a_5",12500],
	["bwi_a3_t6a_6",12500],
	["bwi_a3_t6a_7",12500],
	["O_G_Quadbike_01_F",325],
	["I_G_Offroad_01_F",750],
	["O_MRAP_02_F",900],
	["USAF_HH60G",5265],
	["O_G_Offroad_01_armed_F",3500],
	["O_MRAP_02_hmg_F",5000],
	["O_MRAP_02_gmg_F",7500],
	["O_Truck_03_ammo_F",7500],
	["O_Heli_Light_02_F",12500],
	["B_Heli_Transport_03_unarmed_green_F",15000],
	["C_Offroad_01_F",200],
	["C_SUV_01_F",175],
	["B_Truck_01_covered_F",225],
	["C_Hatchback_01_sport_F",175],
	["B_MRAP_01_F",200],
	["B_Quadbike_01_F",75],
	["I_MRAP_03_F",375],
	["B_G_Offroad_01_armed_F",750],
	["B_APC_Tracked_01_CRV_F",7500],
	["B_APC_Tracked_01_rcws_F",7500],
	["dezkit_b206_fl",7500],
	["EC635",12500],
	["USAF_CV22",10000],
	["USAF_HH60GMED",10000],
	["ARMSCor_A109_Civ",10000],
	["dezkit_b206_ls",10000],
	["Land_Pod_Heli_Transport_04_ammo_F", 250],
	["Land_Pod_Heli_Transport_04_covered_F", 250],
	["Land_Pod_Heli_Transport_04_bench_F", 250],
	["Land_Pod_Heli_Transport_04_fuel_F", 250],
	["Land_Pod_Heli_Transport_04_repair_F", 250],
	["C_Heli_Light_01_civil_F",500],
	["I_Heli_Light_03_unarmed_F",1250],
	["O_Heli_Transport_04_bench_F",5000],
	["B_Heli_Transport_03_F",6000],
	["I_Heli_Transport_02_F",4000],
	["dezkit_b206_fbi",4000],
	["I_Heli_light_03_unarmed_F",5000],
	["B_Heli_Light_01_F",375],
	["B_Heli_Transport_01_F",1000],
	["C_Rubberboat",250],
	["A3L_JetSki",250],
	["C_Boat_Civil_01_F",1100],
	["D41_Trawler",5000],
	["A3L_Ship",2500],
	["Burnes_MK10_1",7500],
	["B_Boat_Transport_01_F",150],
	["C_Boat_Civil_01_police_F",1000],
	["B_SDV_01_F",1500],
    ["C_Van_01_Fuel_F",1000],    
	["B_Heli_Transport_01_camo_F",5250],
	["O_Heli_Transport_04_F",12500],
	["B_Heli_Transport_03_unarmed_F",2250],
	["O_Heli_Transport_04_box_F",12500],
	["C_Offroad_01_repair_F",0]
];
__CONST__(life_garage_sell,life_garage_sell);