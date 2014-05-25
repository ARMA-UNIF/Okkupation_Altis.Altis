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

_panzerKlasse = ["launch_B_Titan_short_F", "mas_launch_M136_F" ];
_panzerKlasseM136 = ["launch_B_Titan_short_F","mas_launch_Stinger_F" ];
_luftKlasse = ["mas_launch_Stinger_F"];
_verbotenKlasse = ["launch_B_Titan_short_F", "mas_launch_M136_F", "mas_launch_Stinger_F"];

while {true} do
{		//-------------------------------------------------------------------------------------------------------------------------
		// ----- Klasse "Verboten Abfrage" ----
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_soldier_AR_F")) then 
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_soldier_B_medic_F")) then 
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		//-------------------------------------------------------------------------------------------------------------------------
		// ----- Klasse "Panzerabwehr Abfrage" ----
		if ( (secondaryWeapon player in _luftKlasse ) && (player isKindOf "B_soldier_AT_F")) then 
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Panzerabwehr M136" ----
		if ( (secondaryWeapon player in _panzerKlasseM136 ) && (player isKindOf "B_soldier_GL_F")) then 
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		//-------------------------------------------------------------------------------------------------------------------------
		// ----- Klasse "Luftabwehr Abfrage" ----
		if ( (secondaryWeapon player in _panzerKlasse ) && (player isKindOf "B_soldier_AA_F")) then 
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		//-------------------------------------------------------------------------------------------------------------------------
			
	sleep 30;
};
