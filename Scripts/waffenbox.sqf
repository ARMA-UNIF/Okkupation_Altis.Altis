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

// Ausrüstung Klasse 1
if (player isKindOf "B_Soldier_F") then {
	_weapons = 
	[
		["muzzle_mas_snds_mc",1],
		["optic_arco",1] // kein , nach dem letzten Item
	];
	
	_magazines = 
	[
		["30Rnd_556x45_Stanag",40],
		["30Rnd_556x45_G36",20],
		["8Rnd_B_Beneli_74Slug",20],
		["15Rnd_9x19_M9",20],
		["HandGrenade_West",20],
		["SmokeShell",20],
        ["SmokeShellRed",20],
        ["SmokeShellGreen",20],
        ["SmokeShellYellow",20],
		["Mine",20] // kein , nach dem letzten Item
		
	];
	_items = 
	[
		["optic_arco",1],
		["30Rnd_556x45_G36",20],
		["8Rnd_B_Beneli_74Slug",20],
		["15Rnd_9x19_M9",20],
		["HandGrenade_West",20],
		["SmokeShell",20],
        ["SmokeShellRed",20],
        ["SmokeShellGreen",20],
        ["SmokeShellYellow",20],
		["Mine",20] // kein , nach dem letzten Item
		
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