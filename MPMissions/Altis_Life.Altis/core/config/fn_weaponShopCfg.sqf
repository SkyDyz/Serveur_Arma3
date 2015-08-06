#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};

	case "cop_recrue":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Recrue Shop",
					[
						["SMG_02_F","nil",1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["optic_Aco_smg",nil,500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,250]
					]
				];
			};
		};
	};
	
	case "cop_GDLP":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a Gardiens de la Paix rank!"};
			default
			{
				["Altis Gardiens de la Paix Shop",
					[
					    ["arifle_Mk20C_F",nil,2500],
						["SMG_02_F","nil",1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_556x45_Stanag",nil,280],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350]
					]
				];
			};
		};
	};

	case "cop_brigadier":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a Brigadier rank!"};
			default
			{
				["Altis Brigadier Shop",
					[
					    ["arifle_SDAR_F",nil,3500],
					    ["arifle_Mk20C_F",nil,2500],
						["SMG_02_F","nil",1000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,250],
						["30Rnd_556x45_Stanag",nil,280],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],
						["30Rnd_556x45_Stanag",nil,400]
					]
				];
			};
		};
	};
	
	case "cop_caporal":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Caporal rank!"};
			default
			{
				["Altis Caporal Shop",
					[
					    ["arifle_MXM_Black_F",nil,4000], //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350], //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450], //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500], //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350], //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400], //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500], //MK20
						["30Rnd_556x45_Stanag",nil,280], //Munition MK20
						["SMG_02_F","nil",1000], //Sting 9mm
						["30Rnd_9x21_Mag",nil,250], //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000], //Tazer
						["16Rnd_9x21_Mag",nil,50], //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],,
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_adjudant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not at a Adjudant rank!"};
			default
			{
				["Altis Adjudant Shop",
					[
					    ["arifle_MXM_Black_F",nil,4000],             //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],        //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450], //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                  //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],  //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],             //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                 //MK20
						["30Rnd_556x45_Stanag",nil,280],             //Munition MK20
						["SMG_02_F","nil",1000],                     //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                  //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],      //Tazer
						["16Rnd_9x21_Mag",nil,50],                   //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_sergent":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a Sergent rank!"};
			default
			{
				["Altis Sergent Shop",
					[
					    ["arifle_MX_SW_F",nil,7000],                  //MX SW
						["100Rnd_65x39_caseless_mag",nil,700],        //Munition MX SW
						["100Rnd_65x39_caseless_mag_Tracer",nil,800], //Munition tracer MX SW
					    ["arifle_MXM_Black_F",nil,4000],              //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],         //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],  //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                   //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],   //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],              //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                  //MK20
						["30Rnd_556x45_Stanag",nil,280],              //Munition MK20
						["SMG_02_F","nil",1000],                      //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                   //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],       //Tazer
						["16Rnd_9x21_Mag",nil,50],                    //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	
	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not at a Major rank!"};
			default
			{
				["Altis Major Shop",
					[
					    ["LMG_Mk200_LP_BI_F",nil,10000],              //MK200
						["200Rnd_65x39_cased_Box",nil,1000],          //Munition MK200
						["200Rnd_65x39_cased_Box_Tracer",nil,1500],   //Munition tracer MK200
					    ["arifle_MX_SW_F",nil,7000],                  //MX SW
						["100Rnd_65x39_caseless_mag",nil,700],        //Munition MX SW
						["100Rnd_65x39_caseless_mag_Tracer",nil,800], //Munition tracer MX SW
					    ["arifle_MXM_Black_F",nil,4000],              //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],         //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],  //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                   //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],   //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],              //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                  //MK20
						["30Rnd_556x45_Stanag",nil,280],              //Munition MK20
						["SMG_02_F","nil",1000],                      //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                   //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],       //Tazer
						["16Rnd_9x21_Mag",nil,50],                    //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not at a Lieutenant rank!"};
			default
			{
				["Altis Lieutenant Shop",
					[
					    ["srifle_LRR_F",nil,15000],                   //M320 LRR
						["7Rnd_408_Mag",nil,900],                     //Munition M320 LRR
						["optic_DMS",nil,1000],                       //Optic DMS
						["optic_SOS",nil,2000],                       //Optic SOS
					    ["LMG_Mk200_LP_BI_F",nil,10000],              //MK200
						["200Rnd_65x39_cased_Box",nil,1000],          //Munition MK200
						["200Rnd_65x39_cased_Box_Tracer",nil,1500],   //Munition tracer MK200
					    ["arifle_MX_SW_F",nil,7000],                  //MX SW
						["100Rnd_65x39_caseless_mag",nil,700],        //Munition MX SW
						["100Rnd_65x39_caseless_mag_Tracer",nil,800], //Munition tracer MX SW
					    ["arifle_MXM_Black_F",nil,4000],              //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],         //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],  //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                   //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],   //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],              //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                  //MK20
						["30Rnd_556x45_Stanag",nil,280],              //Munition MK20
						["SMG_02_F","nil",1000],                      //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                   //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],       //Tazer
						["16Rnd_9x21_Mag",nil,50],                    //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_capitaine":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 9): {"You are not at a Capitaine rank!"};
			default
			{
				["Altis Capitaine Shop",
					[
					    ["srifle_LRR_F",nil,15000],                   //M320 LRR
						["7Rnd_408_Mag",nil,900],                     //Munition M320 LRR
						["optic_DMS",nil,1000],                       //Optic DMS
						["optic_SOS",nil,2000],                       //Optic SOS
					    ["LMG_Mk200_LP_BI_F",nil,10000],              //MK200
						["200Rnd_65x39_cased_Box",nil,1000],          //Munition MK200
						["200Rnd_65x39_cased_Box_Tracer",nil,1500],   //Munition tracer MK200
					    ["arifle_MX_SW_F",nil,7000],                  //MX SW
						["100Rnd_65x39_caseless_mag",nil,700],        //Munition MX SW
						["100Rnd_65x39_caseless_mag_Tracer",nil,800], //Munition tracer MX SW
					    ["arifle_MXM_Black_F",nil,4000],              //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],         //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],  //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                   //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],   //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],              //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                  //MK20
						["30Rnd_556x45_Stanag",nil,280],              //Munition MK20
						["SMG_02_F","nil",1000],                      //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                   //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],       //Tazer
						["16Rnd_9x21_Mag",nil,50],                    //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UAV_01_F",nil,3000],                      //Drone
						["B_UavTerminal",nil,1500],                   //Terminal Drone
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_commandant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 10): {"You are not at a Commandant rank!"};
			default
			{
				["Altis Commandant Shop",
					[
					    ["srifle_LRR_F",nil,15000],                   //M320 LRR
						["7Rnd_408_Mag",nil,900],                     //Munition M320 LRR
						["optic_DMS",nil,1000],                       //Optic DMS
						["optic_SOS",nil,2000],                       //Optic SOS
					    ["LMG_Mk200_LP_BI_F",nil,10000],              //MK200
						["200Rnd_65x39_cased_Box",nil,1000],          //Munition MK200
						["200Rnd_65x39_cased_Box_Tracer",nil,1500],   //Munition tracer MK200
					    ["arifle_MX_SW_F",nil,7000],                  //MX SW
						["100Rnd_65x39_caseless_mag",nil,700],        //Munition MX SW
						["100Rnd_65x39_caseless_mag_Tracer",nil,800], //Munition tracer MX SW
					    ["arifle_MXM_Black_F",nil,4000],              //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],         //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],  //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                   //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],   //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],              //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                  //MK20
						["30Rnd_556x45_Stanag",nil,280],              //Munition MK20
						["SMG_02_F","nil",1000],                      //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                   //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],       //Tazer
						["16Rnd_9x21_Mag",nil,50],                    //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UAV_01_F",nil,3000],                      //Drone
						["B_UavTerminal",nil,1500],                   //Terminal Drone
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "cop_general":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 11): {"You are not at a Général rank!"};
			default
			{
				["Altis Général Shop",
					[
					    ["srifle_LRR_F",nil,15000],                   //M320 LRR
						["7Rnd_408_Mag",nil,900],                     //Munition M320 LRR
						["optic_DMS",nil,1000],                       //Optic DMS
						["optic_SOS",nil,2000],                       //Optic SOS
					    ["LMG_Mk200_LP_BI_F",nil,10000],              //MK200
						["200Rnd_65x39_cased_Box",nil,1000],          //Munition MK200
						["200Rnd_65x39_cased_Box_Tracer",nil,1500],   //Munition tracer MK200
					    ["arifle_MX_SW_F",nil,7000],                  //MX SW
						["100Rnd_65x39_caseless_mag",nil,700],        //Munition MX SW
						["100Rnd_65x39_caseless_mag_Tracer",nil,800], //Munition tracer MX SW
					    ["arifle_MXM_Black_F",nil,4000],              //MXM Noir
						["30Rnd_65x39_caseless_mag",nil,350],         //Munition MXM
						["30Rnd_65x39_caseless_mag_Tracer",nil,450],  //Munition tracer MXM
					    ["arifle_SDAR_F",nil,3500],                   //SDAR
						["30Rnd_556x45_Stanag_Tracer_Red",nil,350],   //Munition SDAR
						["30Rnd_556x45_Stanag",nil,400],              //Munition SDAR tracer
					    ["arifle_Mk20C_F",nil,2500],                  //MK20
						["30Rnd_556x45_Stanag",nil,280],              //Munition MK20
						["SMG_02_F","nil",1000],                      //Sting 9mm
						["30Rnd_9x21_Mag",nil,250],                   //Munition Sting 9mm
						["hgun_P07_snds_F","Stun Pistol",2000],       //Tazer
						["16Rnd_9x21_Mag",nil,50],                    //Munition Tazer
						["optic_Aco_smg",nil,500],
						["optic_Holosight",nil,600],
						["optic_Hamr",nil,750],
						["muzzle_snds_H",nil,1500],
						["acc_flashlight",nil,1000],
						["HandGrenade_Stone","Flashbang",1700],
						["B_UAV_01_F",nil,3000],                      //Drone
						["B_UavTerminal",nil,1500],                   //Terminal Drone
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "malfrat":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_malfrat): {"You don't have a Malfrat training license!"};
			default
			{
				["Malfrat Shop",
					[
					    ["srifle_DMR_01_DMS_F",nil,60000],
						["arifle_Katiba_F",nil,30000],
						["arifle_SDAR_F",nil,20000],
						["arifle_Mk20_plain_F",nil,25000],
						["hgun_PDW2000_F",nil,10000],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_65x39_caseless_green",nil,275],
						["10Rnd_762x54_Mag",nil,400],
						["30Rnd_9x21_Mag",nil,115],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_556x45_Stanag"nil",nil,150],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,275],
						["6Rnd_45ACP_Cylinder",nil,50]
					]
				];
			};
		};
	};
	
	case "delinquant":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_delinquant): {"You don't have a Delinquant training license!"};
			default
			{
				["Délinquant Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["arifle_Katiba_F",nil,30000],
						["srifle_DMR_01_F",nil,50000],
						["arifle_SDAR_F",nil,20000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["10Rnd_762x51_Mag",nil,500],
						["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Rook40_F",nil,1500],
						["hgun_Pistol_heavy_02_F",nil,2500],
						["hgun_ACPC2_F",nil,4500],
						["hgun_PDW2000_F",nil,9500],
						["optic_ACO_grn_smg",nil,950],
						["V_Rangemaster_belt",nil,1900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
