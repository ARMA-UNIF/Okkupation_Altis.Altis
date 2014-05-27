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
class dialog_waffenausgabe
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Continuum, v1.063, #Kanavo)
////////////////////////////////////////////////////////

class ausgabe_frame: RscFrame
{
	idc = 1800;
	text = ""; //--- ToDo: Localize;
	x = 0.340156 * safezoneW + safezoneX;
	y = 0.302 * safezoneH + safezoneY;
	w = 0.33 * safezoneW;
	h = 0.385 * safezoneH;
};
class ausgabe_box: BOX
{
	idc = 1800;
	text = ""; //--- ToDo: Localize;
	x = 0.340156 * safezoneW + safezoneX;
	y = 0.302 * safezoneH + safezoneY;
	w = 0.33 * safezoneW;
	h = 0.385 * safezoneH;
};
class ausgabe_bild: RscPicture
{
	idc = 1200;
	text = "pictures\unif_klein.paa";
	x = 0.618281 * safezoneW + safezoneX;
	y = 0.313 * safezoneH + safezoneY;
	w = 0.035 * safezoneW;
	h = 0.055 * safezoneH;
};
class ausgabe_button: RscButton
{
	idc = 1600;
	text = "Salutieren"; //--- ToDo: Localize;
	x = 0.469062 * safezoneW + safezoneX;
	y = 0.621 * safezoneH + safezoneY;
	w = 0.061875 * safezoneW;
	h = 0.044 * safezoneH;
	action = "closeDialog 0;_nil=[]ExecVM ""scripts\salutieren.sqf""";
};
class ausgabe_text: RscText
{
	idc = 1000;
	text = "So... Sie sind der neue was? Gut. Ich habe Ihnen eine Kiste mit passender Ausrüstung zusammengestellt. Sie erhalten diese Kiste einmalig, verstehen Sie? EINMALIG. Bei Verlust melden Sie dies umgehend ihrem Zugführer. Da wir zur Zeit unterbesetzt sind wird ihre Ausrüstung nur alle 30 min von einem WaKa Mannschafter aufgefüllt...."; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.379 * safezoneH + safezoneY;
	w = 0.278437 * safezoneW;
	h = 0.22 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

};
};
