/*
Last Edit: 10.06.2014
By: Continuum

Creative Commons Lizenzvertrag
Okkupation Altis von http://www.Arma-Unif.de ist lizenziert unter einer
Creative Commons Namensnennung - Nicht kommerziell - Keine Bearbeitungen 4.0 International Lizenz.
http://creativecommons.org/licenses/by-nc-nd/4.0/deed.de

Creative Commons License
Okkupation Altis by http://www.Arma-Unif.de  licensed under a
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
http://creativecommons.org/licenses/by-nc-nd/4.0/

*/

// Variablen Definition
publicVariableServer "Arti_Anzahl";
_xcoord = (Arti_Ziel select 0);
_ycoord = (Arti_Ziel select 1);
_zcoord = 180; 
_timer = 45;
_Munition = Arti_Munition;
_Anzahlfeuer = Arti_Anzahl;
_MunitionZiel = "";
Sleep 0.5;
//_MunitionZiel = "Smoke_120mm_AMOS_White";

//Auswahl der Munition
if ( Arti_Munition == 0 ) then
{
   _MunitionZiel = "Smoke_120mm_AMOS_White";
};
if ( Arti_Munition == 1 ) then
{
   _MunitionZiel = "Smoke_120mm_AMOS_White";
};

if ( Arti_Munition == 2) then
{
   _MunitionZiel = "F_40mm_Red";
};

if ( Arti_Munition == 3) then
{
   _MunitionZiel = "F_40mm_White";
};

//Bereitschaft
if (Bereitschaft == 0) then {hint "Artillerie noch nicht bereit";}
else {
Bereitschaft = 0;
//Simuliertes Arti Feuer in die Pampa -> Wasser
[] execVM "scripts\artillerie\Arti_Simufire.sqf";
Sleep _timer;

if (_Anzahlfeuer == 1) then {
_feuer1 = _MunitionZiel createvehicle [_xcoord  + random 25,_ycoord + random 25,_zcoord ];
Sleep 0.1;
_feuer1 setVelocity [0.2, 0, -0.8];
};
if (_Anzahlfeuer == 2) then {
_feuer2 = _MunitionZiel createvehicle [_xcoord  + random 25,_ycoord + random 25,_zcoord ];
Sleep 0.1;
_feuer2 setVelocity [0.2, 0, -0.8];
Sleep 5;
_feuer3 = _MunitionZiel createvehicle [_xcoord  + random 25,_ycoord + random 25,_zcoord ];
Sleep 0.1;
_feuer3 setVelocity [0.2, 0, -0.8];
};
if (_Anzahlfeuer == 3) then {
_feuer4 = _MunitionZiel createvehicle [_xcoord  + random 25,_ycoord + random 25,_zcoord ];
Sleep 0.1;
_feuer4 setVelocity [0.2, 0, -0.8];
Sleep 5;
_feuer5 = _MunitionZiel createvehicle [_xcoord  + random 25,_ycoord + random 25,_zcoord ];
Sleep 0.1;
_feuer5 setVelocity [0.2, 0, -0.8];
Sleep 5;
_feuer6 = _MunitionZiel createvehicle [_xcoord  + random 25,_ycoord + random 25,_zcoord ];
Sleep 0.1;
_feuer6 setVelocity [0.2, 0, -0.8];
};
Sleep 25;
Bereitschaft = 1
};





