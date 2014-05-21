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

//Klassendefinition
_maschWaffen = ["LMG_mas_M249_F", "LMG_mas_Mk48_F", "LMG_mas_M249_F_v", "LMG_mas_M249_F_d", "LMG_mas_Mk48_F_v", "LMG_mas_Mk48_F_d", "LMG_mas_M240_F", "LMG_mas_mg3_F"];
_pabwehrWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d"];
_luabwehrWaffen = ["G36C", "arifle_mas_g3", "arifle_mas_hk416", "arifle_mas_hk416_v", "arifle_mas_hk416_d", "arifle_mas_hk416c", "arifle_mas_hk416c_v", "arifle_mas_hk416c_d", "arifle_mas_hk417c","arifle_mas_hk417c_v", "arifle_mas_hk417c_d"];


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
	
	sleep 30;
};

