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

_spieler = player;

[0, 0] spawn BIS_fnc_cinemaBorder;
disableUserInput true;
 
titleText ["Er kam direkt auf mich zu....","Plain"]; 
titleFadeOut 20;

_schwWei = ppEffectCreate ["colorCorrections", 1550];
_rund = ppEffectCreate ["RadialBlur", 1000];

_schwWei ppEffectEnable true;
_rund ppEffectEnable true;

_schwWei ppEffectAdjust [0.85, 0.75, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.75, 0.45, 0, 1.0]]; 

_schwWei ppEffectCommit 3;
_rund ppEffectCommit 3;

//_spieler playmove "AmovPercMstpSrasWrflDnon_AinvPknlMstpSlayWrflDnon";
//sleep 0.627;
//_spieler playMove "amovpercmstpsnonwnondnon_scared2";
//sleep 10;
//_spieler playMove "amovpercmstpsnonwnondnon_scared2";
//sleep 10;
//_spieler playMove "amovpercmstpsnonwnondnon_scared2";
sleep 25;

[1, 1] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
ppEffectDestroy _schwWei;
ppEffectDestroy _rund;
