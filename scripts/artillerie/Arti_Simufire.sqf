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
_anzahl = Arti_Anzahl;

//Simuliertes Arti Feuer in die Pampa -> Wasser
Arti1 doArtilleryFire [[25925,25522,0], "8Rnd_82mm_Mo_shells", _anzahl];
//Arti1 doArtilleryFire [[3064,5544,0], "32Rnd_155mm_Mo_shells", _anzahl];
Arti1 setVehicleAmmo 1;