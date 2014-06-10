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
_unit = _this select 0;
_spieler = player;
_unit addMPEventHandler ["MPKilled",{
_killer = _this select 1;
if ( isPlayer _killer && { _killer == player } ) then {

			_handle = player execVM "scripts\civkill.sqf"; 

		};






}];