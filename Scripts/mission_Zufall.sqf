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

if (count missionMarker == 0) then 
{
 hint "Serverneustart"; 
 initMission = 0;
 };	

if( (initMission != 1) || {getMarkerColor activeMission == "ColorGreen"}) then 
		{
		_missionMarker = missionMarker call BIS_fnc_selectRandom;
		sleep 0.5;
		activeMission = _missionMarker;
		missionMarker = missionMarker - [ _missionMarker ];
		initMission = 1;
		sleep 0.5;
		[]execVM ("scripts\Missionen\" + activeMission + ".sqf") ;
		sleep 1;
		hint "Mission ausgewählt"
		} 
		else
		{
		hint "Mission läuft"
		};
