/*
Creative Commons Lizenzvertrag
Okkupation Altis von http://www.Arma-Unif.de ist lizenziert unter einer
Creative Commons Namensnennung - Nicht kommerziell - Keine Bearbeitungen 4.0 International Lizenz.
http://creativecommons.org/licenses/by-nc-nd/4.0/deed.de

Creative Commons License
Okkupation Altis by http://www.Arma-Unif.de  licensed under a
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
http://creativecommons.org/licenses/by-nc-nd/4.0/

*/
if (isDedicated) exitWith {};
if (!isDedicated) then //Server
//if (true) then 
{
	waitUntil {(player == player)&&(alive player)};
};

_marker = "Waffenausgabe";  // Marker
_boxType = "Box_NATO_Wps_F";  // Typ der Waffenkiste
_timer = 1800;  // Nachfüllzeit

if (_this != player) exitWith {};
_weapons = []; _magazines = []; _items = []; _backpack = [];

// Ausrüstung Klasse "MG Schütze"
if (player isKindOf "B_soldier_AR_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["LMG_mas_M249_F",1],
		["LMG_mas_M249_F_v",1],
		["LMG_mas_M249_F_d",1],
		["LMG_mas_Mk48_F",1],
		["LMG_mas_Mk48_F_v",1],
		["LMG_mas_Mk48_F_d",1],
		["LMG_mas_M240_F",1],
		["LMG_mas_mg3_F",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["200Rnd_mas_556x45_Stanag",5],
		["200Rnd_mas_556x45_T_Stanag",5],
		["100Rnd_mas_762x51_Stanag",5],
		["100Rnd_mas_762x51_T_Stanag",5],
		["150Rnd_762x51_Box",5],
		["150Rnd_762x51_Box_Tracer",5],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["optic_hamr",1],
		["optic_NVS",1],
		["optic_arco",1],
		["optic_mas_arco_blk",1],
		["acc_pointer_IR ",1],
		["acc_mas_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["fhq_acc_anpeq15",1],
	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
		];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Panzerabwehr"
if (player isKindOf "B_soldier_AT_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36C",1],
		["arifle_mas_g3",1],
		["arifle_mas_hk416",1],
		["arifle_mas_hk416_v",1],
		["arifle_mas_hk416_d",1],
		["arifle_mas_hk416c",1],
		["arifle_mas_hk416c_v",1],
		["arifle_mas_hk416c_d",1],
		["arifle_mas_hk417c",1],
		["arifle_mas_hk417c_v",1],
		["arifle_mas_hk417c_d",1],
		["launch_B_Titan_short_F ",1],
		["mas_launch_M136_F",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],
		["Titan_AP ",4],
		["mas_M136",4],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]

	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Luftabwehr"
if (player isKindOf "B_soldier_AA_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36C",1],
		["arifle_mas_g3",1],
		["arifle_mas_hk416",1],
		["arifle_mas_hk416_v",1],
		["arifle_mas_hk416_d",1],
		["arifle_mas_hk416c",1],
		["arifle_mas_hk416c_v",1],
		["arifle_mas_hk416c_d",1],
		["arifle_mas_hk417c",1],
		["arifle_mas_hk417c_v",1],
		["arifle_mas_hk417c_d",1],
		["mas_launch_Stinger_F",1],
	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],
		["mas_Stinger ",4],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Grenadier"
if (player isKindOf "B_soldier_GL_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36agl",1],
		["G36kgl",1],
		["arifle_mas_g3_m203",1],
		["arifle_mas_hk416_m203",1],
		["arifle_mas_hk416_m203_v",1],
		["arifle_mas_hk416_m203_d",1],
		["arifle_mas_hk416_m203c",1],
		["arifle_mas_hk416_m203c_v",1],
		["arifle_mas_hk416_m203c_d",1],
		["arifle_mas_hk417_m203c",1],
		["arifle_mas_hk417_m203c_v",1],
		["arifle_mas_hk417_m203c_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],
		["1Rnd_HE_Grenade_shell",5],
		["UGL_FlareWhite_F",5],
		["UGL_FlareGreen_F",5],
		["UGL_FlareRed_F",5],
		["UGL_FlareYellow_F",5],
		["UGL_FlareCIR_F",5],
		["1Rnd_Smoke_Grenade_shell",5],
		["1Rnd_SmokeRed_Grenade_shell",5],
		["1Rnd_SmokeGreen_Grenade_shell",5],
		["1Rnd_SmokeYellow_Grenade_shell",5],
		["1Rnd_SmokePurple_Grenade_shell",5],
		["1Rnd_SmokeBlue_Grenade_shell",5],
		["1Rnd_SmokeOrange_Grenade_shell",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1],
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Medic"
if (player isKindOf "B_medic_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36C",1],
		["arifle_mas_g3",1],
		["arifle_mas_hk416",1],
		["arifle_mas_hk416_v",1],
		["arifle_mas_hk416_d",1],
		["arifle_mas_hk416c",1],
		["arifle_mas_hk416c_v",1],
		["arifle_mas_hk416c_d",1],
		["arifle_mas_hk417c",1],
		["arifle_mas_hk417c_v",1],
		["arifle_mas_hk417c_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		//["B_Parachute",1],
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "HeliPilot"
if (player isKindOf "B_Helipilot_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["SMG_01_F",1],
		["SMG_02_F",1],
		["hgun_PDW2000_F",1],
		["arifle_mas_mp5",1],
		["arifle_mas_mp5_v",1],
		["arifle_mas_mp5_d",1],
		["arifle_mas_mp5sd",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],
		["30Rnd_mas_9x21_Stanag",10],
		["30Rnd_mas_9x21d_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_snds_acp ",1],
		["optic_Aco_smg ",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_AC11704",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["muzzle_snds_L ",1],
		["muzzle_mas_snds_c",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		//["ARC_GER_Tropentarn_Milcap",1],
		//["ARC_GER_Tropentarn_Uniform_vest",1],
		//["ARC_GER_Tropentarn_Uniform_Light",1],
		//["ARC_GER_Flecktarn_Uniform",1],
		//["ARC_GER_Flecktarn_Uniform_vest",1],
		//["ARC_GER_Flecktarn_Uniform_Light",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["ARC_GER_Tropentarn_PlateCarrier",1],
		//["ARC_GER_Tropentarn_PlateCarrier_1",1],
		//["ARC_GER_Tropentarn_PlateCarrier_2",1],
		//["ARC_GER_Tropentarn_chestrig",1],
		//["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		//["ARC_GER_Flecktarn_PlateCarrier",1],
		//["ARC_GER_Flecktarn_PlateCarrier_1",1],
		//["ARC_GER_Flecktarn_PlateCarrier_2",1],
		//["ARC_GER_Flecktarn_chestrig",1],
		//["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["ARC_GER_Tropentarn_Mich",1],
		//["ARC_GER_Tropentarn_booniehat",1],
		//["ARC_GER_Tropentarn_Helmet",1],
		//["ARC_GER_Tropentarn_Helmet_Light",1],
		//["ARC_GER_Tropentarn_Helmet_simple",1],
		//["ARC_GER_Flecktarn_Milcap",1],
		//["ARC_GER_Flecktarn_Mich",1],
		//["ARC_GER_Flecktarn_booniehat",1],
		//["ARC_GER_Flecktarn_Helmet",1],
		//["ARC_GER_Flecktarn_Helmet_Light",1],
		//["ARC_GER_Flecktarn_Helmet_simple",1],
		["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],
		//["ARC_Black_M2000",1],
		//["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "HeliCrew"
if (player isKindOf "B_helicrew_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["SMG_01_F",1],
		["SMG_02_F",1],
		["hgun_PDW2000_F",1],
		["arifle_mas_mp5",1],
		["arifle_mas_mp5_v",1],
		["arifle_mas_mp5_d",1],
		["arifle_mas_mp5sd",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],
		["30Rnd_mas_9x21_Stanag",10],
		["30Rnd_mas_9x21d_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_snds_acp ",1],
		["optic_Aco_smg ",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_AC11704",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["muzzle_snds_L ",1],
		["muzzle_mas_snds_c",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		//["ARC_GER_Tropentarn_Uniform_vest",1],
		//["ARC_GER_Tropentarn_Uniform_Light",1],
		//["ARC_GER_Flecktarn_Uniform",1],
		//["ARC_GER_Flecktarn_Uniform_vest",1],
		//["ARC_GER_Flecktarn_Uniform_Light",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["ARC_GER_Tropentarn_PlateCarrier",1],
		//["ARC_GER_Tropentarn_PlateCarrier_1",1],
		//["ARC_GER_Tropentarn_PlateCarrier_2",1],
		//["ARC_GER_Tropentarn_chestrig",1],
		//["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		//["ARC_GER_Flecktarn_PlateCarrier",1],
		//["ARC_GER_Flecktarn_PlateCarrier_1",1],
		//["ARC_GER_Flecktarn_PlateCarrier_2",1],
		//["ARC_GER_Flecktarn_chestrig",1],
		//["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["ARC_GER_Tropentarn_Milcap",1],
		//["ARC_GER_Tropentarn_Mich",1],
		//["ARC_GER_Tropentarn_booniehat",1],
		//["ARC_GER_Tropentarn_Helmet",1],
		//["ARC_GER_Tropentarn_Helmet_Light",1],
		//["ARC_GER_Tropentarn_Helmet_simple",1],
		//["ARC_GER_Flecktarn_Milcap",1],
		//["ARC_GER_Flecktarn_Mich",1],
		//["ARC_GER_Flecktarn_booniehat",1],
		//["ARC_GER_Flecktarn_Helmet",1],
		//["ARC_GER_Flecktarn_Helmet_Light",1],
		//["ARC_GER_Flecktarn_Helmet_simple",1],
		//["H_PilotHelmetHeli_B",1],
		["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],
		//["ARC_Black_M2000",1],
		//["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Jet Pilot"
if (player isKindOf "B_Pilot_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		//["SMG_01_F",1],
		//["SMG_02_F",1],
		//["hgun_PDW2000_F",1],
		//["arifle_mas_mp5",1],
		//["arifle_mas_mp5_v",1],
		//["arifle_mas_mp5_d",1],
		//["arifle_mas_mp5sd",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		//["30Rnd_45ACP_Mag_SMG_01",10],
		//["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		//["30Rnd_9x21_Mag",10],
		//["30Rnd_mas_9x21_Stanag",10],
		//["30Rnd_mas_9x21d_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		//["HandGrenade",5],
		//["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		//["muzzle_snds_acp ",1],
		//["optic_Aco_smg ",1],
		//["optic_Aco_grn_smg",1],
		//["FHQ_optic_MicroCCO_low",1],
		//["FHQ_optic_AC11704",1],
		//["acc_flashlight",1],
		//["fhq_acc_anpeq15_black",1],
		//["acc_mas_pointer_IR",1],
		//["muzzle_snds_L ",1],
		//["muzzle_mas_snds_c",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		//["ARC_GER_Tropentarn_Uniform_vest",1],
		//["ARC_GER_Tropentarn_Uniform_Light",1],
		//["ARC_GER_Flecktarn_Uniform",1],
		//["ARC_GER_Flecktarn_Uniform_vest",1],
		//["ARC_GER_Flecktarn_Uniform_Light",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["ARC_GER_Tropentarn_PlateCarrier",1],
		//["ARC_GER_Tropentarn_PlateCarrier_1",1],
		//["ARC_GER_Tropentarn_PlateCarrier_2",1],
		//["ARC_GER_Tropentarn_chestrig",1],
		//["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		//["ARC_GER_Flecktarn_PlateCarrier",1],
		//["ARC_GER_Flecktarn_PlateCarrier_1",1],
		//["ARC_GER_Flecktarn_PlateCarrier_2",1],
		//["ARC_GER_Flecktarn_chestrig",1],
		//["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["ARC_GER_Tropentarn_Milcap",1],
		//["ARC_GER_Tropentarn_Mich",1],
		//["ARC_GER_Tropentarn_booniehat",1],
		//["ARC_GER_Tropentarn_Helmet",1],
		//["ARC_GER_Tropentarn_Helmet_Light",1],
		//["ARC_GER_Tropentarn_Helmet_simple",1],
		//["ARC_GER_Flecktarn_Milcap",1],
		//["ARC_GER_Flecktarn_Mich",1],
		//["ARC_GER_Flecktarn_booniehat",1],
		//["ARC_GER_Flecktarn_Helmet",1],
		//["ARC_GER_Flecktarn_Helmet_Light",1],
		//["ARC_GER_Flecktarn_Helmet_simple",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],
		//["ARC_Black_M2000",1],
		//["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Kompanieführer / Zugführer"
if (player isKindOf "B_officer_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		//["SMG_01_F",1],
		//["SMG_02_F",1],
		//["hgun_PDW2000_F",1],
		//["arifle_mas_mp5",1],
		//["arifle_mas_mp5_v",1],
		//["arifle_mas_mp5_d",1],
		//["arifle_mas_mp5sd",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		//["30Rnd_45ACP_Mag_SMG_01",10],
		//["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		//["30Rnd_9x21_Mag",10],
		//["30Rnd_mas_9x21_Stanag",10],
		//["30Rnd_mas_9x21d_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		//["HandGrenade",5],
		//["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	//-----------Anbauten Pri.-------- //
		//["muzzle_snds_acp ",1],
		//["optic_Aco_smg ",1],
		//["optic_Aco_grn_smg",1],
		//["FHQ_optic_MicroCCO_low",1],
		//["FHQ_optic_AC11704",1],
		//["acc_flashlight",1],
		//["fhq_acc_anpeq15_black",1],
		//["acc_mas_pointer_IR",1],
		//["muzzle_snds_L ",1],
		//["muzzle_mas_snds_c",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["Rangefinder", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["ARC_GER_Tropentarn_PlateCarrier",1],
		//["ARC_GER_Tropentarn_PlateCarrier_1",1],
		//["ARC_GER_Tropentarn_PlateCarrier_2",1],
		//["ARC_GER_Tropentarn_chestrig",1],
		//["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		//["ARC_GER_Flecktarn_PlateCarrier",1],
		//["ARC_GER_Flecktarn_PlateCarrier_1",1],
		//["ARC_GER_Flecktarn_PlateCarrier_2",1],
		//["ARC_GER_Flecktarn_chestrig",1],
		//["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["ARC_GER_Tropentarn_Milcap",1],
		//["ARC_GER_Tropentarn_Mich",1],
		//["ARC_GER_Tropentarn_booniehat",1],
		//["ARC_GER_Tropentarn_Helmet",1],
		//["ARC_GER_Tropentarn_Helmet_Light",1],
		//["ARC_GER_Tropentarn_Helmet_simple",1],
		//["ARC_GER_Flecktarn_Milcap",1],
		//["ARC_GER_Flecktarn_Mich",1],
		//["ARC_GER_Flecktarn_booniehat",1],
		//["ARC_GER_Flecktarn_Helmet",1],
		//["ARC_GER_Flecktarn_Helmet_Light",1],
		//["ARC_GER_Flecktarn_Helmet_simple",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],
		//["ARC_Black_M2000",1],
		//["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		["clf_nicecomm2_prc117g_multi",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Pionier"
if (player isKindOf "B_engineer_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["SMG_01_F",1],
		["SMG_02_F",1],
		["hgun_PDW2000_F",1],
		["arifle_mas_mp5",1],
		["arifle_mas_mp5_v",1],
		["arifle_mas_mp5_d",1],
		["arifle_mas_mp5sd",1],
		["arifle_mas_m1014",1],
		["mas_launch_M136_F",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],
		["30Rnd_mas_9x21_Stanag",10],
		["30Rnd_mas_9x21d_Stanag",10],
		["7Rnd_mas_12Gauge_Slug",10],
		["7Rnd_mas_12Gauge_Pellets",10],
		["mas_M136",4],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_snds_acp ",1],
		["optic_Aco_smg ",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_AC11704",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["muzzle_snds_L ",1],
		["muzzle_mas_snds_c",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],

		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Kit-------- //
		["ToolKit", 1],
		//-----------Brillen-------- //
		["G_Lowprofile",1],
		["G_Combat",1],
		//["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[

		//-----------Rucksäcke-------- //
		["ARC_GER_Backpack_Flecktarn_Rep",1],
		["ARC_GER_Backpack_Tropentarn_Rep",1],
		["B_Parachute",1]
		];

};

// Ausrüstung Klasse "Sprengstoffexperte"
if (player isKindOf "B_soldier_exp_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36C",1],
		["arifle_mas_g3",1],
		["arifle_mas_hk416",1],
		["arifle_mas_hk416_v",1],
		["arifle_mas_hk416_d",1],
		["arifle_mas_hk416c",1],
		["arifle_mas_hk416c_v",1],
		["arifle_mas_hk416c_d",1],
		["arifle_mas_hk417c",1],
		["arifle_mas_hk417c_v",1],
		["arifle_mas_hk417c_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Sprengstoffe------- //
		["ATMine_Range_Mag",5],
		["APERSMine_Range_Mag",5],
		["APERSBoundingMine_Range_Mag",5],
		["SLAMDirectionalMine_Wire_Mag",5],
		["APERSTripMine_Wire_Mag",5],
		["ClaymoreDirectionalMine_Remote_Mag",5],
		["SatchelCharge_Remote_Mag",5],
		["DemoCharge_Remote_Mag",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		// [H_PilotHelmetHeli_B",1],
		// ["H_CrewHelmetHeli_B",1],
		// ["H_PilotHelmetFighter_B",1],
		// ["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],

		//-----------Kit-------- //
		["MineDetector", 1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Panzer Crew"
if (player isKindOf "B_crew_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["SMG_01_F",1],
		["SMG_02_F",1],
		["hgun_PDW2000_F",1],
		["arifle_mas_mp5",1],
		["arifle_mas_mp5_v",1],
		["arifle_mas_mp5_d",1],
		["arifle_mas_mp5sd",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],
		["30Rnd_mas_9x21_Stanag",10],
		["30Rnd_mas_9x21d_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_snds_acp ",1],
		["optic_Aco_smg ",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_AC11704",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["muzzle_snds_L ",1],
		["muzzle_mas_snds_c",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		//["ARC_GER_Tropentarn_Uniform_vest",1],
		//["ARC_GER_Tropentarn_Uniform_Light",1],
		//["ARC_GER_Flecktarn_Uniform",1],
		//["ARC_GER_Flecktarn_Uniform_vest",1],
		//["ARC_GER_Flecktarn_Uniform_Light",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["ARC_GER_Tropentarn_PlateCarrier",1],
		//["ARC_GER_Tropentarn_PlateCarrier_1",1],
		//["ARC_GER_Tropentarn_PlateCarrier_2",1],
		//["ARC_GER_Tropentarn_chestrig",1],
		//["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		//["ARC_GER_Flecktarn_PlateCarrier",1],
		//["ARC_GER_Flecktarn_PlateCarrier_1",1],
		//["ARC_GER_Flecktarn_PlateCarrier_2",1],
		//["ARC_GER_Flecktarn_chestrig",1],
		//["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["ARC_GER_Tropentarn_Milcap",1],
		//["ARC_GER_Tropentarn_Mich",1],
		//["ARC_GER_Tropentarn_booniehat",1],
		//["ARC_GER_Tropentarn_Helmet",1],
		//["ARC_GER_Tropentarn_Helmet_Light",1],
		//["ARC_GER_Tropentarn_Helmet_simple",1],
		//["ARC_GER_Flecktarn_Milcap",1],
		//["ARC_GER_Flecktarn_Mich",1],
		//["ARC_GER_Flecktarn_booniehat",1],
		//["ARC_GER_Flecktarn_Helmet",1],
		//["ARC_GER_Flecktarn_Helmet_Light",1],
		//["ARC_GER_Flecktarn_Helmet_simple",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["H_HelmetCrew_B",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],
		//["ARC_Black_M2000",1],
		//["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Funker"
if (player isKindOf "B_Soldier_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36C",1],
		["arifle_mas_g3",1],
		["arifle_mas_hk416",1],
		["arifle_mas_hk416_v",1],
		["arifle_mas_hk416_d",1],
		["arifle_mas_hk416c",1],
		["arifle_mas_hk416c_v",1],
		["arifle_mas_hk416c_d",1],
		["arifle_mas_hk417c",1],
		["arifle_mas_hk417c_v",1],
		["arifle_mas_hk417c_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		//["B_Parachute",1],
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		["clf_nicecomm2_prc117g_multi",1]
		];

};

// Ausrüstung Klasse "Truppführer"
if (player isKindOf "B_Soldier_SL_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["G36C",1],
		["arifle_mas_g3",1],
		["arifle_mas_hk416",1],
		["arifle_mas_hk416_v",1],
		["arifle_mas_hk416_d",1],
		["arifle_mas_hk416c",1],
		["arifle_mas_hk416c_v",1],
		["arifle_mas_hk416c_d",1],
		["arifle_mas_hk417c",1],
		["arifle_mas_hk417c_v",1],
		["arifle_mas_hk417c_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["g36_mag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["30Rnd_mas_556x45_Stanag",10],
		["30Rnd_mas_556x45_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Laserbatteries",2],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_acc_LLM01L",1],
		["FHQ_acc_LLM01F",1],
		["muzzle_snds_m",1],
		["optic_hamr",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["muzzle_mas_snds_m",1],
		["muzzle_mas_snds_mc",1],
		["optic_NVS",1],
		["optic_DMS",1],
		["optic_mas_arco_blk",1],
		["fhq_optic_hws_g33",1],
		["acc_pointer_IR ",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["acc_mas_pointer_IR",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_AC11704_tan",1],
		//-----------Kit-------- //
		["Laserdesignator", 1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["ARC_GER_Tropentarn_Mich",1],
		//["ARC_GER_Tropentarn_booniehat",1],
		//["ARC_GER_Tropentarn_Helmet",1],
		//["ARC_GER_Tropentarn_Helmet_Light",1],
		//["ARC_GER_Tropentarn_Helmet_simple",1],
		//["ARC_GER_Flecktarn_Mich",1],
		//["ARC_GER_Flecktarn_booniehat",1],
		//["ARC_GER_Flecktarn_Helmet",1],
		//["ARC_GER_Flecktarn_Helmet_Light",1],
		//["ARC_GER_Flecktarn_Helmet_simple",1],
		//H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["ARC_GER_Tropentarn_Milcap",1],
		["ARC_GER_Flecktarn_Milcap",1],
		["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],
		//["ARC_Black_M2000",1],
		//["ARC_UN_M2000",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		["tf_rt1523g",1]
		];

};

// Ausrüstung Klasse "Gruppenscharfschütze"
if (player isKindOf "B_soldier_M_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["srifle_mas_sr25",1],
		["srifle_mas_sr25_v",1],
		["srifle_mas_sr25_d",1],
		["srifle_mas_hk417",1],
		["srifle_mas_hk417_v",1],
		["srifle_mas_hk417_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Sprengstoffe------- //
		//["ATMine_Range_Mag",5],
		//["APERSMine_Range_Mag",5],
		//["APERSBoundingMine_Range_Mag",5],
		//["SLAMDirectionalMine_Wire_Mag",5],
		//["APERSTripMine_Wire_Mag",5],
		//["ClaymoreDirectionalMine_Remote_Mag",5],
		//["SatchelCharge_Remote_Mag",5],
		//["DemoCharge_Remote_Mag",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_mas_snds_sm",1],
		["muzzle_mas_snds_smc",1],
		["optic_DMS",1],
		["optic_NVS",1],
		["optic_mas_zeiss_c",1],
		["optic_mas_zeiss",1],
		["optic_SOS",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],
		//-----------Kit-------- //
		["Binocular", 1],

		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//[H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],

		//-----------Kit-------- //
		//["MineDetector", 1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		["ARC_GER_Backpack_Carryall_Flecktarn",1],
		["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Spotter"
if (player isKindOf "B_spotter_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["srifle_mas_sr25",1],
		["srifle_mas_sr25_v",1],
		["srifle_mas_sr25_d",1],
		["srifle_mas_hk417",1],
		["srifle_mas_hk417_v",1],
		["srifle_mas_hk417_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],
		["20Rnd_mas_762x51_Stanag",10],
		["20Rnd_mas_762x51_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Sprengstoffe------- //
		// ["ATMine_Range_Mag",5],
		// ["APERSMine_Range_Mag",5],
		// ["APERSBoundingMine_Range_Mag",5],
		// ["SLAMDirectionalMine_Wire_Mag",5],
		// ["APERSTripMine_Wire_Mag",5],
		["ClaymoreDirectionalMine_Remote_Mag",5],
		// ["SatchelCharge_Remote_Mag",5],
		// ["DemoCharge_Remote_Mag",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		["Laserbatteries",1],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_mas_snds_sm",1],
		["muzzle_mas_snds_smc",1],
		["optic_DMS",1],
		["optic_NVS",1],
		["optic_mas_zeiss_c",1],
		["optic_mas_zeiss",1],
		["optic_SOS",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],

		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//[H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],

		//-----------Kit-------- //
		["Laserdesignator", 1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		["tf_rt1523g",1]
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		//["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		//["ARC_GER_Kitbag_compact_Flecktarn",1],
		//["B_mas_Kitbag_black",1],
		//["B_Parachute",1],
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Scharfschütze"
if (player isKindOf "B_sniper_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["srifle_LRR_F",1],
		["srifle_mas_m24",1],
		["srifle_mas_m24_v",1],
		["srifle_mas_m24_d",1],
		["srifle_mas_m107",1],
		["srifle_mas_m107_v",1],
		["srifle_mas_m107_d",1],

	//----------Seitenwaffe---------- //
		["RH_deaglem",1],
		["RH_python",1],
		["RH_bullb",1],
		["RH_usp",1],
		["RH_p226",1],
		["RH_kimber",1],
		["RH_kimber_nw",1],
		["RH_m9",1],
		["RH_m9c",1],
		["RH_fnp45",1],
		["RH_fnp45t",1],
		["RH_g19",1],
		["RH_g19t",1],
		["RH_muzi",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["7Rnd_408_Mag ",10],
		["5Rnd_mas_762x51_Stanag",10],
		["5Rnd_mas_762x51_T_Stanag",10],
		["5Rnd_mas_127x99_Stanag",10],
		["5Rnd_mas_127x99_T_Stanag",10],

		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["RH_30Rnd_9x19_UZI",4],

	//-----------Granaten----------- //
		["HandGrenade",5],
		["MiniGrenade",5],

	//-----------Sprengstoffe------- //
		// ["ATMine_Range_Mag",5],
		// ["APERSMine_Range_Mag",5],
		// ["APERSBoundingMine_Range_Mag",5],
		// ["SLAMDirectionalMine_Wire_Mag",5],
		// ["APERSTripMine_Wire_Mag",5],
		["ClaymoreDirectionalMine_Remote_Mag",5],
		// ["SatchelCharge_Remote_Mag",5],
		// ["DemoCharge_Remote_Mag",5],

	//-----------Rauch/Licht-------- //
		["SmokeShell",5],
		["SmokeShellGreen",5],
		["SmokeShellRed",5],
		["SmokeShellYellow",5],
		["SmokeShellPurple",5],
		["SmokeShellBlue",5],
		["Chemlight_green",5],
		["Chemlight_red",5],
		//["Laserbatteries",1],
		["Chemlight_blue",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	//-----------Anbauten Pri.-------- //
		["muzzle_mas_snds_sh",1],
		["optic_DMS",1],
		["optic_NVS",1],
		["optic_mas_zeiss_c",1],
		["optic_mas_zeiss",1],
		["optic_SOS",1],

	//-----------Anbauten Sec.-------- //
		["RH_demz",1],
		["optic_Yorris",1],
		["RH_x300",1],
		["RH_m6x",1],
		["RH_x2",1],
		["RH_deflash",1],
		["RH_suppr9",1],
		["muzzle_snds_acp",1],
		["RH_aacusp",1],
		["RH_gemtech45",1],
		["RH_fhusp",1],
		["RH_osprey",1],
		["RH_docter",1],
		["optic_MRD",1],
		["RH_gemtech9",1],
		["RH_muzisd",1],

		//-----------Uniform-------- //
		["ARC_GER_Tropentarn_Uniform_vest",1],
		["ARC_GER_Tropentarn_Uniform_Light",1],
		["ARC_GER_Flecktarn_Uniform",1],
		["ARC_GER_Flecktarn_Uniform_vest",1],
		["ARC_GER_Flecktarn_Uniform_Light",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		["ARC_GER_Tropentarn_PlateCarrier",1],
		["ARC_GER_Tropentarn_PlateCarrier_1",1],
		["ARC_GER_Tropentarn_PlateCarrier_2",1],
		["ARC_GER_Tropentarn_chestrig",1],
		["ARC_GER_Tropentarn_Plate_Carrier_H",1],
		["ARC_GER_Flecktarn_PlateCarrier",1],
		["ARC_GER_Flecktarn_PlateCarrier_1",1],
		["ARC_GER_Flecktarn_PlateCarrier_2",1],
		["ARC_GER_Flecktarn_chestrig",1],
		["ARC_GER_Flecktarn_Plate_Carrier_H",1],
		["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		["ARC_GER_Tropentarn_Mich",1],
		["ARC_GER_Tropentarn_booniehat",1],
		["ARC_GER_Tropentarn_Helmet",1],
		["ARC_GER_Tropentarn_Helmet_Light",1],
		["ARC_GER_Tropentarn_Helmet_simple",1],
		["ARC_GER_Flecktarn_Mich",1],
		["ARC_GER_Flecktarn_booniehat",1],
		["ARC_GER_Flecktarn_Helmet",1],
		["ARC_GER_Flecktarn_Helmet_Light",1],
		["ARC_GER_Flecktarn_Helmet_simple",1],
		//[H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["H_HelmetCrew_B",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["ARC_Black_M2000",1],
		["ARC_UN_M2000",1],

		//-----------Kit-------- //
		["Rangefinder", 1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["NVGoggles_mas",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1]
		//["clf_nicecomm2_prc117g_multi",1],
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		//["ARC_GER_Backpack_Carryall_Tropentarn",1],
		//["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
		//["ARC_GER_Backpack_Flecktarn_Med",1]
		//["ARC_GER_Backpack_Carryall_Flecktarn",1],
		//["ARC_GER_Backpack_Flecktarn",1],
		["ARC_GER_Kitbag_compact_Flecktarn",1],
		["B_mas_Kitbag_black",1]
		//["B_Parachute",1],
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ammobox erstellen
_box = _boxType createVehicleLocal (getMarkerPos _marker);
sleep 2;
_box setPos [26824.684,24617.508,1.2];
sleep 1;
_box setDir 135;
_box allowDamage false;

while {true} do {
	// leeren.
	clearWeaponCargo _box;
	clearMagazineCargo _box;
	clearItemCargo _box;

	{_box addWeaponCargo [(_x select 0),(_x select 1)]} foreach _weapons;

	{_box addMagazineCargo [(_x select 0),(_x select 1)]} foreach _magazines;

	{_box addItemCargo [(_x select 0),(_x select 1)]} foreach _items;

	{_box addBackpackCargo [(_x select 0),(_x select 1)]} foreach _backpack;

	sleep _timer;
};