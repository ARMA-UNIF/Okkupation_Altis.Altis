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

//Klassendefinition (+ "arifle_SDAR_F")
_maschWaffen = ["BWA3_MG4", "BWA3_MG5", "BWA3_MG5_Tan", "BWA3_G36_LMG"];
_pabwehrWaffen = ["BWA3_G36", "BWA3_G36K", "BWA3_G28_Assault", "BWA3_G27", "arifle_SDAR_F"];
_luabwehrWaffen = ["BWA3_G36", "BWA3_G36K", "BWA3_G28_Assault", "BWA3_G27", "arifle_SDAR_F"];
_granatWaffen = ["BWA3_G36_AG", "BWA3_G36K_AG", "BWA3_G27_AG", "arifle_SDAR_F"];
_saniWaffen = ["BWA3_G36", "BWA3_G36K", "BWA3_G28_Assault", "BWA3_G27", "arifle_SDAR_F"];
_heliWaffen = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F"];
_helicrewWaffen  = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F"];
_jetWaffen = [""];
_offizierWaffen = [""];
_pionierWaffen = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F"];
_sprengWaffen = ["BWA3_G36", "BWA3_G36K", "BWA3_G28_Assault", "BWA3_G27", "arifle_SDAR_F"];
_panzerWaffen = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F"];
_funkerWaffen = ["BWA3_G36", "BWA3_G36K", "BWA3_G28_Assault", "BWA3_G27", "arifle_SDAR_F"];
_truppWaffen = ["BWA3_G36", "BWA3_G36K", "BWA3_G28_Assault", "BWA3_G27", "arifle_SDAR_F"];
_gruppenschuetzeWaffen = ["BWA3_G28_Standard", "arifle_SDAR_F"];
_spotterWaffen = ["BWA3_G28_Standard", "arifle_SDAR_F"];
_sniperWaffen = ["srifle_LRR_F", "BWA3_G82", "arifle_SDAR_F"];
sleep 1;

//Schleife
while {true} do
{
		// ----- Klasse "MG Schütze" ----
		if ( !(primaryWeapon player in _maschWaffen ) && (player isKindOf "B_soldier_AR_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Panzerabwehr" ----
		if ( !(primaryWeapon player in _pabwehrWaffen ) && (player isKindOf "B_soldier_AT_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Luftabwehr" ----
		if ( !(primaryWeapon player in _luabwehrWaffen ) && (player isKindOf "B_soldier_AA_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Grenadier" ----
		if ( !(primaryWeapon player in _granatWaffen ) && (player isKindOf "B_soldier_GL_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Sani" ----
		if ( !(primaryWeapon player in _saniWaffen ) && (player isKindOf "B_medic_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Heli Pilot" ----
		if ( !(primaryWeapon player in _heliWaffen ) && (player isKindOf "B_Helipilot_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Heli Crew Pilot" ----
		if ( !(primaryWeapon player in _helicrewWaffen ) && (player isKindOf "B_helicrew_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Heli Crew Pilot" ----
		if ( !(primaryWeapon player in _jetWaffen ) && (player isKindOf "B_Pilot_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Kompanieführer / Zugführer" ----
		if ( !(primaryWeapon player in _offizierWaffen ) && (player isKindOf "B_officer_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Pionier" ----
		if ( !(primaryWeapon player in _pionierWaffen ) && (player isKindOf "B_engineer_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Sprengstoffexperte" ----
		if ( !(primaryWeapon player in _sprengWaffen ) && (player isKindOf "B_soldier_exp_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Panzerbesatzung" ----
		if ( !(primaryWeapon player in _panzerWaffen ) && (player isKindOf "B_crew_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Sprengstoffexperte" ----
		if ( !(primaryWeapon player in _funkerWaffen ) && (player isKindOf "B_Soldier_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Truppführer" ----
		if ( !(primaryWeapon player in _truppWaffen ) && (player isKindOf "B_Soldier_SL_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Gruppenscharfschütze" ----
		if ( !(primaryWeapon player in _gruppenschuetzeWaffen ) && (player isKindOf "B_soldier_M_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Spotter" ----
		if ( !(primaryWeapon player in _spotterWaffen ) && (player isKindOf "B_spotter_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Scharfschütze" ----
		if ( !(primaryWeapon player in _sniperWaffen ) && (player isKindOf "B_sniper_F")) then
		{
		player removeWeapon (primaryWeapon player)
		}
		else
		{
		nil
		};

	sleep 30;
};

