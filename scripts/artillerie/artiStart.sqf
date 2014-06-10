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


closeDialog 0;
if ( (player isKindOf "B_officer_F") && {Arti_freigeschaltet == 1} ) then 
		{
		ShowDialog = {
		Arti_Munition = 0;
		Arti_Anzahl = 1;
	sleep 0.01;
	_ok = createDialog "artiMain";
	slidersetSpeed [101,1,1];
	sliderSetRange [101, 0, 3]; 
	sliderSetPosition [101, 1];
	ctrlEnable [104, false];
	waitUntil { !dialog };
};
 
_void = [] call ShowDialog;
		}
		else
		{
		hint "Zugang verweigert";
		};
