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

_panzerKlasse = ["launch_B_Titan_short_F", "BWA3_RGW90", "BWA3_Pzf3"];
_panzerKlasseM136 = ["launch_B_Titan_short_F", "BWA3_Pzf3", "BWA3_Fliegerfaust"];
_luftKlasse = ["BWA3_Fliegerfaust"];
_verbotenKlasse = ["launch_B_Titan_short_F", "BWA3_RGW90", "BWA3_Pzf3", "BWA3_Fliegerfaust"];

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
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_medic_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_Helipilot_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_helicrew_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_Pilot_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_officer_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_soldier_exp_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_crew_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_Soldier_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_Soldier_SL_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_soldier_M_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_spotter_F")) then
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_sniper_F")) then
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
		if ( (secondaryWeapon player in _panzerKlasseM136 ) && (player isKindOf "B_engineer_F")) then
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
