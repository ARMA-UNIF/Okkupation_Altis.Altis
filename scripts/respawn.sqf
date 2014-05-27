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

waitUntil { alive player };

player addEventHandler ["KILLED", {
  [] spawn
  {
    waitUntil { alive player };
    waitUntil { (count (weapons player)) > 0 };
	player unassignItem "NVGoggles";
	player unassignItem "itemgps";
	player unassignItem "itemRadio";
	removeAllWeapons player;	
	removeHeadgear player;	
	removeBackpack player;
	removeUniform player;
	removeVest player;
	removeGoggles player;
	removeallitems player; 
	sleep 1;
	player additem "ItemCompass";
	player assignitem "itemcompass";
	player additem "itemmap";
	player assignitem "itemmap";
	player additem "itemwatch";
	player assignitem "itemwatch";
	player AddUniform "ARC_GER_Tropentarn_Uniform"; 
	
  };
}];