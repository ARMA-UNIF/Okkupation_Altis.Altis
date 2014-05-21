_missionMarker = missionMarker call BIS_fnc_selectRandom;

if( getMarkerColor _missionMarker == "ColorGreen") then {
		missionMarker = missionMarker - [ _missionMarker ];
		hint "Bitte neue Mission beantragen";
		} else {
		player removeAction 0;
	};







if( getMarkerColor _missionMarker == "ColorGreen") then {
		missionMarker + "1"
		createMarker ["Marker1", position player ];
		createMarker ["Marker1", position player ];
		"MarkerOne" setMarkerSize [100, 200];
		player addAction ["Neuer Auftrag", "activate_Mission.sqf"];
		} else {
		player removeAction 0;
	};


player addAction ["Neuer Auftrag", "activate_Mission.sqf"];
player removeAction 0;

_missionMarker = missionMarker;


player addAction ["Switch on generator", "activate_generator.sqs"];

player removeAction 0;

_activeMission = _missionMarker

_missionMarker = missionMarker call BIS_fnc_selectRandom;
missionMarker = missionMarker - [ _missionMarker ];