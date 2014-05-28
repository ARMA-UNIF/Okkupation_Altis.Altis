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

//Klassendefinition (+ "arifle_mas_mp5sd_ds")
_maschWaffen = ["LMG_mas_M249_F", "LMG_mas_Mk48_F", "LMG_mas_M249_F_v", "LMG_mas_M249_F_d", "LMG_mas_Mk48_F_v", "LMG_mas_Mk48_F_d", "LMG_mas_M240_F", "LMG_mas_mg3_F"];
_pabwehrWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d", "arifle_mas_mp5sd_ds"];
_luabwehrWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d", "arifle_mas_mp5sd_ds"];
_granatWaffen = ["G36agl", "G36kgl", "arifle_mas_g3_m203", "arifle_mas_hk416_m203", "arifle_mas_hk416_m203_v", "arifle_mas_hk416_m203_d", "arifle_mas_hk416_m203c", "arifle_mas_hk416_m203c_v", "arifle_mas_hk416_m203c_d", "arifle_mas_hk417_m203c","arifle_mas_hk417_m203c_v", "arifle_mas_hk417_m203c_d", "arifle_mas_mp5sd_ds"];
_saniWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d", "arifle_mas_mp5sd_ds"];
_heliWaffen = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F", "arifle_mas_mp5", "arifle_mas_mp5_v", "arifle_mas_mp5_d", "arifle_mas_mp5sd", "arifle_mas_mp5sd_ds"];
_helicrewWaffen  = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F", "arifle_mas_mp5", "arifle_mas_mp5_v", "arifle_mas_mp5_d", "arifle_mas_mp5sd", "arifle_mas_mp5sd_ds"];
_jetWaffen = [""];
_offizierWaffen = [""];
_pionierWaffen = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F", "arifle_mas_mp5", "arifle_mas_mp5_v", "arifle_mas_mp5_d", "arifle_mas_mp5sd", "arifle_mas_mp5sd_ds", "arifle_mas_m1014"];
_sprengWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d", "arifle_mas_mp5sd_ds"];
_panzerWaffen = ["SMG_01_F", "SMG_02_F", "hgun_PDW2000_F", "arifle_mas_mp5", "arifle_mas_mp5_v", "arifle_mas_mp5_d", "arifle_mas_mp5sd", "arifle_mas_mp5sd_ds"];
_funkerWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d", "arifle_mas_mp5sd_ds"];
_truppWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d", "arifle_mas_mp5sd_ds"];
_gruppenschuetzeWaffen = ["srifle_mas_sr25", "srifle_mas_sr25_v", "srifle_mas_sr25_d", "srifle_mas_hk417", "srifle_mas_hk417_v", "srifle_mas_hk417_d", "arifle_mas_mp5sd_ds"];
_spotterWaffen = ["srifle_mas_sr25", "srifle_mas_sr25_v", "srifle_mas_sr25_d", "srifle_mas_hk417", "srifle_mas_hk417_v", "srifle_mas_hk417_d", "arifle_mas_mp5sd_ds"];
_sniperWaffen = ["srifle_LRR_F", "srifle_mas_m24", "srifle_mas_m24_v", "srifle_mas_m24_d", "srifle_mas_m107", "srifle_mas_m107_v", "srifle_mas_m107_d", "arifle_mas_mp5sd_ds"];
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

