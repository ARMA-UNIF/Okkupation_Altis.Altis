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
if (!isDedicated) then
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
		["BWA3_MG4",1],
		["BWA3_MG5",1],
		["BWA3_MG5_Tan",1],
		["BWA3_G36_LMG",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_200Rnd_556x45",5],
		["BWA3_120Rnd_762x51",5],
		["BWA3_100Rnd_556x45_G36",5],
		["BWA3_100Rnd_556x45_G36_Tracer",5],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

		["BWA3_optic_NSA80",1],
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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		["AGM_SpareBarrel",1],
		//-----------Uniform-------- //
		["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
		];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		["B_AssaultPack_mcamo",1],
		["B_Carryall_mcamo",1],
		["B_Kitbag_cbr",1],
		["B_Kitbag_mcamo",1],
		["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_G36",1],
		["BWA3_G36K",1],
		["BWA3_G27",1],
		["BWA3_G28_Assault",1],
		["launch_B_Titan_short_F ",1],
		["BWA3_RGW90",1],
		["BWA3_Pzf3",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],
		["Titan_AP ",4],
		["RH_7Rnd_50_AE",4],
		["RH_6Rnd_357_Mag",4],
		["RH_6Rnd_454_Mag",4],
		["RH_15Rnd_9x19_SIG",4],
		["RH_12Rnd_45cal_usp",4],
		["RH_7Rnd_45cal_m1911",4],
		["RH_15Rnd_9x19_M9",4],
		["RH_15Rnd_45cal_fnp",4],
		["RH_17Rnd_9x19_g17",4],
		["BWA3_15Rnd_9x19_P8",4],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		["BWA3_Vector", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
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
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
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
		["BWA3_G36",1],
		["BWA3_G36K",1],
		["BWA3_G27",1],
		["BWA3_G28_Assault",1],
		["BWA3_Fliegerfaust",1],
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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],
		["BWA3_Fliegerfaust_Mag ",4],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		["B_AssaultPack_mcamo",1],
		["B_Carryall_mcamo",1],
		["B_Kitbag_cbr",1],
		["B_Kitbag_mcamo",1],
		["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_G36_AG",1],
		["BWA3_G36K_AG",1],
		["BWA3_G27_AG",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
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
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		["BWA3_Vector", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
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
		//["ARC_GER_Backpack_Tropentarn_Med",1],
		["ARC_GER_Backpack_Carryall_Tropentarn",1],
		["ARC_GER_Backpack_Tropentarn",1],
		["ARC_GER_Kitbag_compact_Tropentarn",1],
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
		["BWA3_G36",1],
		["BWA3_G36K",1],
		["BWA3_G27",1],
		["BWA3_G28_Assault",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1],
		["B_FieldPack_blk",1]
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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["muzzle_snds_acp",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["BWA3_acc_LLM01_irlaser",1],
		["muzzle_snds_L",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		["U_B_HeliPilotCoveralls",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		//["G_Lowprofile",1],
		//["G_Combat",1],
		//["G_Squares_Tinted",1],
		//["BWA3_G_Combat_Clear",1],
		//["BWA3_G_Combat_Black",1],
		//["BWA3_G_Combat_Orange",1],
		//["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["muzzle_snds_acp",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["BWA3_acc_LLM01_irlaser",1],
		["muzzle_snds_L",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		["U_B_HeliPilotCoveralls",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		//["G_Combat",1],
		//["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		//["BWA3_G_Combat_Orange",1],
		//["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		//["30Rnd_45ACP_Mag_SMG_01",10],
		//["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		//["30Rnd_9x21_Mag",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		//["HandGrenade",2],
		//["MiniGrenade",2],
		//["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		//["FHQ_optic_AC11704",1],
		//["optic_Aco_smg",1],
		//["optic_Aco_grn_smg",1],
		//["FHQ_optic_MicroCCO_low",1],
		//["BWA3_optic_RSAS",1],
		//["BWA3_optic_Aimpoint",1],
		//["muzzle_snds_acp",1],
		//["acc_pointer_IR",1],
		//["acc_flashlight",1],
		//["fhq_acc_anpeq15_black",1],
		//["BWA3_acc_LLM01_irlaser",1],
		//["muzzle_snds_L",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		["U_B_Pilot_Coveralls",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		//["G_Lowprofile",1],
		//["G_Combat",1],
		//["G_Squares_Tinted",1],
		//["BWA3_G_Combat_Clear",1],
		//["BWA3_G_Combat_Black",1],
		//["BWA3_G_Combat_Orange",1],
		//["NVGoggles",1],
		//["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		//["BWA3_G36",1],
		//["BWA3_G36K",1],
		//["BWA3_G27",1],
		//["BWA3_G28_Assault",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		//["30Rnd_45ACP_Mag_SMG_01",10],
		//["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		//["30Rnd_9x21_Mag",10],
		//["30Rnd_mas_9x21_Stanag",10],
		//["30Rnd_mas_9x21d_Stanag",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		//["HandGrenade",2],
		//["MiniGrenade",2],
		//["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	["ItemcTab",1],
	//-----------Anbauten Pri.-------- //
		//["FHQ_optic_AC11704_tan",1],
		//["FHQ_optic_AC11704",1],
		//["FHQ_optic_ACOG_tan",1],
		//["FHQ_optic_ACOG",1],
		//["FHQ_optic_AIM_tan",1],
		//["FHQ_optic_AIM",1],
		//["FHQ_optic_MicroCCO_low_tan",1],
		//["FHQ_optic_MicroCCO_low",1],
		//["FHQ_optic_HWS_G33_tan",1],
		//["FHQ_optic_HWS_G33",1],
		//["FHQ_optic_VCOG_tan",1],
		//["FHQ_optic_VCOG",1],
		//["BWA3_optic_RSAS",1],
		//["BWA3_optic_Aimpoint",1],
		//["BWA3_optic_Shortdot",1],
		//["BWA3_optic_ZO4x30",1],
		//["BWA3_optic_NSV",1],
		//["BWA3_optic_IRV600",1],
		//["BWA3_muzzle_snds_MG4",1],
		//["BWA3_muzzle_snds_MG5",1],
		//["BWA3_muzzle_snds_G36",1],
		//["BWA3_acc_LLM01_irlaser",1],
		//["acc_flashlight",1],
		//["acc_pointer_IR",1],
		//["optic_MRCO",1],
		//["optic_Hamr",1],
		//["optic_Arco",1],
		//["optic_Holosight",1],
		//["FHQ_acc_ANPEQ15_black",1],
		//["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		////["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		["BWA3_Vest_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		//["G_Lowprofile",1],
		//["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		["clf_nicecomm2_prc117g_multi",1],
		["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_RGW90",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["muzzle_snds_acp",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["BWA3_acc_LLM01_irlaser",1],
		["muzzle_snds_L",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],

		//-----------Kit-------- //
		["ToolKit", 1],
		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		//["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		//["NVGoggles_OPFOR",1]
	];
		_backpack =
		[

		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Sprengstoffexperte"
if (player isKindOf "B_soldier_exp_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["BWA3_G36",1],
		["BWA3_G36K",1],
		["BWA3_G27",1],
		["BWA3_G28_Assault",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2],

	//-----------Sprengstoffe------- //
		["ATMine_Range_Mag",5],
		["APERSMine_Range_Mag",5],
		["APERSBoundingMine_Range_Mag",5],
		["SLAMDirectionalMine_Wire_Mag",5],
		["APERSTripMine_Wire_Mag",5],
		["ClaymoreDirectionalMine_Remote_Mag",5],
		["SatchelCharge_Remote_Mag",5],
		["DemoCharge_Remote_Mag",5]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Kit-------- //
		["MineDetector", 1],

		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		//["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		["B_AssaultPack_mcamo",1],
		["B_Carryall_mcamo",1],
		["B_Kitbag_cbr",1],
		["B_Kitbag_mcamo",1],
		["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["30Rnd_45ACP_Mag_SMG_01",10],
		["30Rnd_45ACP_Mag_SMG_01_tracer_green",10],
		["30Rnd_9x21_Mag",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["muzzle_snds_acp",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["BWA3_acc_LLM01_irlaser",1],
		["muzzle_snds_L",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["BWA3_Uniform_Crew_Tropen",1],
		//["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		["BWA3_Vest_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		//["V_TacVest_blk",1],
		//["V_TacVestIR_blk",1],
		//["V_Chestrig_blk",1],
		//["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		["BWA3_CrewmanKSK_Tropen",1],
		["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		//["H_Watchcap_blk",1],
		//["H_HelmetB_light_black",1],
		//["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		["G_Combat",1],
		//["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		//["BWA3_G_Combat_Orange",1],
		//["NVGoggles",1],
		//["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
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
		["BWA3_G36",1],
		["BWA3_G36K",1],
		["BWA3_G27",1],
		["BWA3_G28_Assault",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		//["Binocular", 1],
		["AGM_EarBuds", 1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		["BWA3_OpsCore_Tropen_Patch",1],
		["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		//["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Truppführer"
if (player isKindOf "B_Soldier_SL_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["BWA3_G36",1],
		["BWA3_G36K",1],
		["BWA3_G27",1],
		["BWA3_G28_Assault",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_30Rnd_556x45_G36",10],
		["BWA3_30Rnd_556x45_G36_Tracer",10],
		["BWA3_30Rnd_556x45_G36_Tracer_Dim",10],
		["BWA3_30Rnd_556x45_G36_AP",10],
		["BWA3_30Rnd_556x45_G36_SD",10],
		["BWA3_20Rnd_762x51_G28",10],
		["BWA3_20Rnd_762x51_G28_Tracer",10],
		["BWA3_20Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_20Rnd_762x51_G28_AP",10],
		["BWA3_20Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["FHQ_optic_AC11704_tan",1],
		["FHQ_optic_AC11704",1],
		["FHQ_optic_ACOG_tan",1],
		["FHQ_optic_ACOG",1],
		["FHQ_optic_AIM_tan",1],
		["FHQ_optic_AIM",1],
		["FHQ_optic_MicroCCO_low_tan",1],
		["FHQ_optic_MicroCCO_low",1],
		["FHQ_optic_HWS_G33_tan",1],
		["FHQ_optic_HWS_G33",1],
		["FHQ_optic_VCOG_tan",1],
		["FHQ_optic_VCOG",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_ZO4x30",1],
		["BWA3_optic_NSV",1],
		["BWA3_optic_IRV600",1],
		["BWA3_muzzle_snds_MG4",1],
		["BWA3_muzzle_snds_MG5",1],
		["BWA3_muzzle_snds_G36",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_flashlight",1],
		["acc_pointer_IR",1],
		["optic_MRCO",1],
		["optic_Hamr",1],
		["optic_Arco",1],
		["optic_Holosight",1],
		["FHQ_acc_ANPEQ15_black",1],
		["FHQ_acc_ANPEQ15",1],
		//-----------Kit-------- //
		["Laserdesignator", 1],
		["AGM_EarBuds", 1],
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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],
		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],
		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		//["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],
		["H_MilCap_oucamo",1],


		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		["G_Lowprofile",1],
		//["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1]
		//["B_AssaultPack_blk",1],
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Gruppenscharfschütze"
if (player isKindOf "B_soldier_M_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["BWA3_G28_Standard",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_10Rnd_762x51_G28",10],
		["BWA3_10Rnd_762x51_G28_Tracer",10],
		["BWA3_10Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_10Rnd_762x51_G28_AP",10],
		["BWA3_10Rnd_762x51_G28_LR",10],
		["BWA3_10Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]
	];
	_items =
	[
	//-----------Funke-------- //
	["tf_rf7800str",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["optic_DMS",1],
		["optic_SOS",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_20x50",1],
		["BWA3_optic_NSV80",1],
		["FHQ_acc_ANPEQ15",1],
		["BWA3_muzzle_snds_G28",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		//-----------Kit-------- //
		["BWA3_Vector", 1],
		["AGM_EarBuds", 1],
		["BWA3_ItemKestrel",1],
		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		//["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		//["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		//["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		//["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],


		//-----------Kit-------- //
		//["MineDetector", 1],

		//-----------Brillen-------- //
		["G_Tactical_Clear",1],
		//["G_Lowprofile",1],
		//["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1]
		//["B_FieldPack_blk",1]
		];

};

// Ausrüstung Klasse "Spotter"
if (player isKindOf "B_spotter_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["BWA3_G28_Standard",1],

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
		["BWA3_P8",1]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["BWA3_10Rnd_762x51_G28",10],
		["BWA3_10Rnd_762x51_G28_Tracer",10],
		["BWA3_10Rnd_762x51_G28_Tracer_Dim",10],
		["BWA3_10Rnd_762x51_G28_AP",10],
		["BWA3_10Rnd_762x51_G28_LR",10],
		["BWA3_10Rnd_762x51_G28_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2],

	//-----------Sprengstoffe------- //
		// ["ATMine_Range_Mag",5],
		// ["APERSMine_Range_Mag",5],
		// ["APERSBoundingMine_Range_Mag",5],
		// ["SLAMDirectionalMine_Wire_Mag",5],
		// ["APERSTripMine_Wire_Mag",5],
		["ClaymoreDirectionalMine_Remote_Mag",5]
		// ["SatchelCharge_Remote_Mag",5],
		// ["DemoCharge_Remote_Mag",5],

	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["optic_DMS",1],
		["optic_SOS",1],
		["BWA3_optic_Shortdot",1],
		["BWA3_optic_20x50",1],
		["BWA3_optic_NSV80",1],
		["FHQ_acc_ANPEQ15",1],
		["BWA3_muzzle_snds_G28",1],
		["BWA3_acc_LLM01_irlaser",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],

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
		["BWA3_acc_LLM01_irlaser",1],

		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Kit-------- //
		["Laserdesignator",1],
		["AGM_EarBuds",1],
		["BWA3_ItemKestrel",1],
		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		//["G_Lowprofile",1],
		//["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		//["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1]
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
		["BWA3_G82",1],

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
		["BWA3_P8",1],
		["BWA3_MP7"]
	];

	_magazines =
	[
	//-----------Munition----------- //
		["7Rnd_408_Mag ",10],
		["BWA3_10Rnd_127x99_G82",10],
		["BWA3_10Rnd_127x99_G82_Tracer",10],
		["BWA3_10Rnd_127x99_G82_Tracer_Dim",10],
		["BWA3_10Rnd_127x99_G82_AP",10],
		["BWA3_10Rnd_127x99_G82_AP_Tracer",10],
		["BWA3_10Rnd_127x99_G82_Raufoss",10],
		["BWA3_10Rnd_127x99_G82_Raufoss_Tracer",10],
		["BWA3_10Rnd_127x99_G82_Raufoss_Tracer_Dim",10],
		["BWA3_10Rnd_127x99_G82_SD",10],

		["RH_7Rnd_50_AE",3],
		["RH_6Rnd_357_Mag",3],
		["RH_6Rnd_454_Mag",3],
		["RH_15Rnd_9x19_SIG",3],
		["RH_12Rnd_45cal_usp",3],
		["RH_7Rnd_45cal_m1911",3],
		["RH_15Rnd_9x19_M9",3],
		["RH_15Rnd_45cal_fnp",3],
		["RH_17Rnd_9x19_g17",3],
		["BWA3_15Rnd_9x19_P8",3],
		["BWA3_40Rnd_46x30_MP7",3],
		["BWA3_40Rnd_46x30_MP7_SD",3],

	//-----------Granaten----------- //
		["HandGrenade",2],
		["MiniGrenade",2],
		["BWA3_DM51A1",2],

	//-----------Rauch/Licht-------- //
		["SmokeShell",2],
		["BWA3_DM25",2],
		["SmokeShellGreen",2],
		["SmokeShellRed",2],
		["SmokeShellYellow",2],
		["BWA3_DM32_Yellow",2],
		["SmokeShellPurple",2],
		["SmokeShellBlue",2],
		["BWA3_DM32_Orange",2],
		["Chemlight_green",2],
		["Chemlight_red",2],
		["Chemlight_blue",2]

	//-----------Sprengstoffe------- //
		// ["ATMine_Range_Mag",5],
		// ["APERSMine_Range_Mag",5],
		// ["APERSBoundingMine_Range_Mag",5],
		// ["SLAMDirectionalMine_Wire_Mag",5],
		// ["APERSTripMine_Wire_Mag",5],
		["ClaymoreDirectionalMine_Remote_Mag",5]
		// ["SatchelCharge_Remote_Mag",5],
		// ["DemoCharge_Remote_Mag",5],

	];
	_items =
	[
	//-----------Funke-------- //
	["tf_anprc152",1],
	["BWA3_ItemNavipad",1],
	//-----------Anbauten Pri.-------- //
		["optic_LRPS",1],
		["optic_SOS",1],
		["BWA3_optic_24x72",1],
		["BWA3_optic_NSV80",1],

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
		["BWA3_acc_LLM01_irlaser",1],
		["FHQ_optic_AC11704",1],
		["optic_Aco_smg",1],
		["optic_Aco_grn_smg",1],
		["FHQ_optic_MicroCCO_low",1],
		["acc_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["BWA3_optic_RSAS",1],
		["BWA3_optic_Aimpoint",1],
		["BWA3_muzzle_snds_MP7",1],

		//-----------Uniform-------- //
		//["BWA3_Uniform_Tropen",1],
		//["BWA3_Uniform2_Tropen",1],
		//["BWA3_Uniform3_Tropen",1],
		["BWA3_Uniform_Ghillie_Tropen",1],
		["SMD_US_BLOPS_Digi_BDU",1],

		//-----------Westen-------- //
		//["BWA3_Vest_Autorifleman_Tropen",1],
		//["BWA3_Vest_Leader_Tropen",1],
		//["BWA3_Vest_Rifleman1_Tropen",1],
		//["BWA3_Vest_Medic_Tropen",1],
		//["BWA3_Vest_Marksman_Tropen",1],
		//["BWA3_Vest_Grenadier_Tropen",1],
		["V_HarnessOSpec_brn",1],
		//["V_TacVest_oli",1],
		["V_TacVest_blk",1],
		["V_TacVestIR_blk",1],
		["V_Chestrig_blk",1],
		["V_PlateCarrier1_blk",1],

		//-----------Helme-------- //
		//["BWA3_M92_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen",1],
		//["BWA3_CrewmanKSK_Tropen_Headset",1],
		["BWA3_OpsCore_Tropen",1],
		//["BWA3_OpsCore_Tropen_Patch",1],
		//["BWA3_OpsCore_Tropen_Camera",1],
		["BWA3_Booniehat_Tropen",1],
		//["H_PilotHelmetHeli_B",1],
		//["H_CrewHelmetHeli_B",1],
		//["H_PilotHelmetFighter_B",1],
		//["BWA3_OpsCore_Schwarz_Camera",1],
		["BWA3_OpsCore_Schwarz",1],
		["H_Watchcap_blk",1],
		["H_HelmetB_light_black",1],
		["H_Bandanna_gry",1],

		//-----------Kit-------- //
		["BWA3_Vector",1],
		["AGM_EarBuds",1],
		["BWA3_ItemKestrel",1],
		//-----------Brillen-------- //
		//["G_Tactical_Clear",1],
		//["G_Lowprofile",1],
		//["G_Combat",1],
		["G_Squares_Tinted",1],
		["BWA3_G_Combat_Clear",1],
		["BWA3_G_Combat_Black",1],
		["BWA3_G_Combat_Orange",1],
		["NVGoggles",1],
		["NVGoggles_OPFOR",1]
	];
		_backpack =
		[
		//-----------Rucksäcke-------- //
		//["tf_rt1523g",1],
		//["clf_nicecomm2_prc117g_multi",1],
		//["clf_nicecomm2_coy",1],
		["B_AssaultPack_mcamo",1],
		//["B_Carryall_mcamo",1],
		//["B_Kitbag_cbr",1],
		//["B_Kitbag_mcamo",1],
		//["B_Fieldpack_cbr",1],
		//["BWA3_AssaultPack_Medic",1],
		["B_Parachute",1],
		["B_AssaultPack_blk",1]
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