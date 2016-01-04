/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {25};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {200};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {750};
	case "B_Truck_01_transport_F": {425};
	case "B_MRAP_01_F": {65};
	case "O_MRAP_02_F": {60};
	case "I_MRAP_03_F": {58};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "O_Truck_03_transport_F": {285};
	case "O_Truck_03_covered_F": {300};
	case "O_Truck_03_device_F": {350};
	case "Land_CargoBox_V1_F": {500};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {500};
	case "O_Heli_Transport_04_box_F": {750};
	case "B_Heli_Transport_03_unarmed_F": {750};
	case "Land_Pod_Heli_Transport_04_box_F": {650};
	case "B_Slingload_01_Cargo_F": {600};
	case "Land_Wreck_Traw_F": {10000000};
	case "Land_Wreck_Traw2_F": {10000000};
	case "D41_Trawler": {1500};
	case "GNT_C185": {250};
	case "GNT_C185F": {250};
	case "GNT_C185T": {250};
	case "GNTFSF": {10000};
	case "IVORY_CRJ200_1": {400};
	case "IVORY_ERJ135_1": {375};
	case "LOL_C130": {15000};
	case "EC635": {200};
	case "EC635_AT": {200};
	case "EC635_unarmed": {200};
	case "EC635_CSAT": {200};
	case "EC635_AT_CSAT": {200};
	case "EC635_Unarmed_CSAT": {200};
	case "EC635_SAR": {200};
	case "EC635_BW": {200};
	case "EC635_AT_BW": {200};
	case "EC635_Unarmed_BW": {200};
	case "EC635_ADAC": {200};
	case "sab_C130_J": {15000};
	case "sab_C130_JT": {15000};
	case "sab_c130_JC": {15000};
	case "sab_C130_JE": {15000};
	case "sab_c130_JEC": {15000};
	case "sab_C130_H": {15000};
	case "sab_C130_HC": {15000};
	case "sab_C130_HEC": {15000};
	case "sab_C130_HEC": {15000};
	case "sab_C130_H_CSAT": {15000};
	case "sab_C130_H_CSAT2": {15000};
	case "sab_C130_H_CSAT3": {15000};
	case "sab_C130_H_AAF": {15000};
	case "sab_C130_H_AAF2": {15000};
	case "sab_C130_H_AAF3": {15000};
	case "sab_C130_FA": {15000};
	case "sab_C130_CG": {15000};
	case "sab_C130_J_FF": {15000};
	case "sab_C130_J_FF2": {15000};
	case "sab_C130_FP": {15000};
	case "sab_C130_LC": {15000};
	case "sab_C130_LC_Ski": {15000};
	case "sab_C130_CSP": {15000};
	case "sab_L100_AL": {15000};
	case "usaf_police_car2": {40};
	case "usaf_police_car": {40};
	case "usaf_police_offroad": {40};
	case "ARMSCor_A109_Civ": {110};
	case "ARMSCor_A109LUH_B": {110};
	case "ARMSCor_A109LUH_D": {110};
	case "ARMSCor_A109LUH_I": {110};
	case "ARMSCor_A109LAH_B": {110};
	case "ARMSCor_A109LAH_I": {110};
	case "Burnes_LCAC_1": {750};
	case "Burnes_MK10_1": {550};
	case "bwi_a3_t6a": {40};
	case "bwi_a3_t6a_1": {40};
	case "bwi_a3_t6a_2": {40};
	case "bwi_a3_t6a_3": {40};
	case "bwi_a3_t6a_4": {40};
	case "bwi_a3_t6a_5": {40};
	case "bwi_a3_t6a_6": {40};
	case "bwi_a3_t6a_7": {40};
	case "bwi_a3_t6a_8": {40};
	case "bwi_a3_t6a_9": {40};
	case "bwi_a3_t6a_nta": {40};
	case "bwi_a3_t6a_nta_1": {40};
	case "bwi_a3_t6a_nta_2": {40};
	case "bwi_a3_t6c": {40};
	case "bwi_a3_at6b": {40};
	case "bwi_a3_at6b_1": {40};
	case "bwi_a3_at6b_2": {40};
	case "CG_Lamborghini_Aventador_Red": {40};
	case "CG_Lamborghini_Aventador_Black": {40};
	case "CG_Lamborghini_Aventador_Blue": {40};
	case "CG_Lamborghini_Aventador_Green": {40};
	case "CG_Lamborghini_Aventador_Orange": {40};
	case "CG_Lamborghini_Aventador_Purple": {40}; 
	case "CG_Lamborghini_Aventador_White": {40};
	case "dezkit_b206_ls": {100};
	case "dezkit_b206_hs": {100};
	case "dezkit_b206_fl": {100};
	case "dezkit_b206_rescue": {300};
	case "dezkit_b206_ems": {300};
	case "dezkit_b206_news": {100};
	case "dezkit_b206_police": {300};
	case "dezkit_b206_fbi": {300};
	case "dezkit_b206x_armed": {100};
	case "dezkit_b206x_unarmed": {100};
	case "subpd": {35};
	default {24};
};