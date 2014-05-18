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
_timer = 1500;  // Nachfüllzeit

if (_this != player) exitWith {};
_weapons = []; _magazines = []; _items = [];

// Ausrüstung Klasse "MG Schütze"
if (player isKindOf "B_Soldier_AR_F") then {
	_weapons =
	[
	//----------Hauptwaffe----------- //
		["LMG_mas_M249_F",1],
		["LMG_mas_M249_F_v",1],
		["LMG_mas_M249_F_d",1],
		["LMG_mas_Mk48_F",1],
		["LMG_mas_Mk48_v",1],
		["LMG_mas_Mk48_d",1],
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
		["RH_muzi",1] // kein , nach dem letzten Item
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
		["Chemlight_blue",5] // kein , nach dem letzten Item
	];
	_items =
	[
		["optic_hamr",1],
		["optic_NVS",1],
		["optic_arco",1],
		["optic_mas_arco_blk",1],
		["acc_pointer_IR ",1],
		["acc_mas_pointer_IR",1],
		["acc_flashlight",1],
		["fhq_acc_anpeq15_black",1],
		["fhq_acc_anpeq15",1] // kein , nach dem letzten Item

	];

};


// Ammobox erstellen
_box = _boxType createVehicleLocal (getMarkerPos _marker);
sleep 2;
_box setPos [26824.684,24617.508,1.5];
sleep 1;
_box setDir 135;
_box allowDamage false;
//_box hideObject true;

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