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
_panzerKlasse = ["launch_B_Titan_short_F", "mas_launch_M136_F" ];
_panzerKlasseM136 = ["mas_launch_M136_F"];
_luftKlasse = ["mas_launch_Stinger_F"];
_verbotenKlasse = ["launch_B_Titan_short_F", "mas_launch_M136_F", "mas_launch_Stinger_F"];

while {true} do
{		
		// ----- Klasse "Verboten Abfrage" ----
		if ( (secondaryWeapon player in _verbotenKlasse ) && (player isKindOf "B_soldier_AR_F")) then 
		{
		player removeWeapon (secondaryWeapon player)
		}
		else
		{
		nil
		};
		// ----- Klasse "Panzerabwehr Abfrage" ----
		
		// ----- Klasse "Panzerabwehr M136" ----
		
		// ----- Klasse "Luftabwehr Abfrage" ----
			
	sleep 30;
};
