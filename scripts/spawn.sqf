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

sleep 2;
_unit = player;

If (local _unit) then {
	_unit unassignItem "NVGoggles";
	_unit unassignItem "ItemGps";
	_unit unassignItem "ItemRadio";
	removeAllWeapons _unit;
	removeHeadgear _unit;
	removeBackpack _unit;
	removeUniform _unit;
	removeVest _unit;
	removeGoggles _unit;
	removeAllItems _unit;
	sleep 1;
	_unit AddUniform "ARC_GER_Tropentarn_Uniform";
	_unit addItem "ItemCompass";
	_unit assignItem "ItemCompass";
	_unit addItem "ItemMap";
	_unit assignItem "ItemMap";
	_unit addItem "ItemWatch";
	_unit assignItem "ItemWatch";
};
