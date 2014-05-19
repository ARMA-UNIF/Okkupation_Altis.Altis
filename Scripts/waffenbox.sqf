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

//if (!isDedicated) then //Server
if (true) then //Editor
{
	waitUntil {(player == player)&&(alive player)};
};

_marker = "Waffenausgabe";  // Marker
_boxType = "Box_NATO_Wps_F";  // Typ der Waffenkiste
_timer = 1800;  // Nachfüllzeit

if (_this != player) exitWith {};
_weapons = []; _magazines = []; _items = [];

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
		["RH_muzisd",1] 

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
		["RH_muzisd",1]

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
		["RH_muzisd",1]

	];

};

// Ammobox erstellen
_box = _boxType createVehicleLocal (getMarkerPos _marker);
sleep 2;
_box setPos [26824.684,24617.508,1.5];
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

	sleep _timer;
};