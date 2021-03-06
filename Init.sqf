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

// MP settings
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};
//if (!isMultiplayer) then { enableSaving [true, true]; } else { enableSaving [true, true]; };
enableSaving [false, false];

// Intro
[0, 0] spawn BIS_fnc_cinemaBorder;
showHUD false;
titleCut ["", "BLACK FADED", 12];
[] spawn
{
	waitUntil{!(isNil "BIS_fnc_init")};
	["video\intro.ogv", ""] call BIS_fnc_quotations;
	sleep 12;
	waitUntil {BIS_fnc_quotations_playing || !(isNil "BIS_fnc_quotations_skip")};
	player enableSimulation true;
	"dynamicBlur" ppEffectEnable true;
	"dynamicBlur" ppEffectAdjust [6];
	"dynamicBlur" ppEffectCommit 0;
	"dynamicBlur" ppEffectAdjust [0.0];
	"dynamicBlur" ppEffectCommit 5;
	titleCut ["", "BLACK IN", 6];
	waitUntil {BIS_fnc_quotations_playing || !(isNil "BIS_fnc_quotations_skip")};
	[1, 1] spawn BIS_fnc_cinemaBorder;
	sleep 3;
	[] execVM "scripts\osd.sqf";
	sleep 12;
	["<t size='0.7'>" + "Missions Design by<br/>" + "</t>" + "<t size='0.5'>" + "Team UNIF<br/>" + "www.Arma-Unif.de<br/>" + "</t>",-0.5,0.7,3,-1,0,3011] call bis_fnc_dynamicText;
	sleep 10;
	["<t size='0.7'>" + "Intro by<br/>" + "</t>" + "<t size='0.5'>" + "Continuum" + "</t>",-0.5,0.1,3,-1,0,3011] call bis_fnc_dynamicText;
	sleep 10;
	//["<t size='0.7'>" + "platzhalter<br/>" + "</t>" + "<t size='0.5'>" + "platzhalter" + "</t>",0.5,0.1,3,-1,0,3011] call bis_fnc_dynamicText;
	showHUD true;
};

// scripts ------------------------------------------------------------------
_igiLoad = execVM "scripts\IgiLoad\IgiLoadInit.sqf";
[] execVM "scripts\zlt_fieldrepair.sqf";
[] execVM "eos\OpenMe.sqf";
[] execVM "scripts\waffenbox.sqf";
[] execVM "scripts\waffen_restrictions.sqf";
[] execVM "scripts\werfer_restrictions.sqf";
[] execVM "scripts\briefing.sqf";
[] execVM "scripts\respawn.sqf";

//////////////////////////////////////////////////////////////////////////////////////////
{
  if (side _x == civilian) then {
KilledUnit = _x addMPeventhandler ["killed", {nul = _this execVM "civkill.sqf"}];
};
} forEach allUnits;
//////////////////////////////////////////////////////////////////////////////////////////

//Tragen
[] execVM "scripts\R3F_ARTY_AND_LOG\init.sqf";

//Artillerie
Arti_Anzahl = 1;
Arti_Ziel = 0;
Arti_Munition = 0;
Bereitschaft = 1;
Arti_Feuer = 0;
Arti_freigeschaltet = 1; //Testweise auf 1. Normalerweise 0

//KI
[] execVM "scripts\VCOMAI\init.sqf";
player setVariable ["FiredTime", 0];
player setVariable ["PLAYERCOMMANDER", 1];
player addEventHandler ["Fired",{null = [_this] spawn FiredAtTarget;}];

//Performance
[] execVM "scripts\module_performance\module_monitor\init.sqf";
[] execVM "scripts\module_performance\module_cleanup\init.sqf";

//Fahrzeug restr.
[["restricted vehicles"],["allowed drivers"], "message upon ejection",true,true,true] execVM "scripts\restrictVehicles.sqf";

//Atombombe
mdh_nuke_destruction_zone	= 2000;	// DESTRUCTION ZONE
mdh_nuke_camshake			= 1;	// CAEMRASHAKE
mdh_nuke_ash				= 1;	// ASH
mdh_nuke_colorcorrection	= 0;	// COLLORCORRECTION
//------------------------------------------------------------------------------

// Zufallsmission Start
if (isDedicated) then {
missionMarker = ["M001", "M002" ];
initMission = 0;
activeMission =0;
mission_Sign setObjectTextureGlobal [0, "pictures\mission\0.jpg"];
};

// Task Force Radio
tf_no_auto_long_range_radio = true;