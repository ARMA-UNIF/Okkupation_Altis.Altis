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

class Main
{
	idd=-1;
	movingenable= true;
	
	class controls 
	{
	class bg
			{    
				idc = 100;
				type = 0;
				style = 48; 
				x = -0.45; 
				y = -0.52;
				h = 1.95;
				w = 1.9;
				font = "TahomaB";
				sizeEx = 0;
				colorBackground[] = {0,0,0,0}; 
				colorText[] = {1,1,1,1}; 
				text = "pictures\Tablet.paa";
				fixedWidth = 0;
				shadow = 0;
				lineSpacing = 0;
			}; 
			class exit_knopf
			{    
				idc = 1;
				type = 11;
				style = 0;
				x = 0.855; 
				y = 0.57;
				h = 0.68;
				w = 0.6;
				font = "EtelkaNarrowMediumPro";
				sizeEx = 0.05;
				color[] = { 1, 1, 1, 0 };
				colorActive[] = { 1, 0.2, 0.2, 0 };
				soundEnter[] = { "", 0, 1 };   
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "closeDialog 0;";
				text = "O";
				
			}; 
			class menu_knopf_1
			{    
				idc = 2;
				type = 11;
				style = 0;
				x = 0.0; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,1};
				colorActive[] =  {0.537,0.369,0.102,1};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "Aufgabenbereich";

				
			}; 
			class menu_knopf_2
			{    
				idc = 3;
				type = 11;
				style = 0;
				x = 0.2; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,1};
				colorActive[] =  {0.537,0.369,0.102,1};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "SitRep";

				
			}; 
			class menu_knopf_3
			{    
				idc = 4;
				type = 11;
				style = 0;
				x = 0.31; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,1};
				colorActive[] =  {0.537,0.369,0.102,1};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "ROE";

				
			}; 
			class menu_knopf_4
			{    
				idc = 5;
				type = 11;
				style = 0;
				x = 0.39; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,1};
				colorActive[] =  {0.537,0.369,0.102,1};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "Missionen";

				
			}; 
			class menu_knopf_5
			{    
				idc = 6;
				type = 11;
				style = 0;
				x = 0.52; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,1};
				colorActive[] =  {0.537,0.369,0.102,1};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "Waffenkiste";
					
			}; 
			class menu_knopf_6
			{    
				idc = 7;
				type = 11;
				style = 0;
				x = 0.69; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,0};
				colorActive[] =  {0.537,0.369,0.102,0};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "---Spare---";
					
			}; 
			class menu_knopf_7
			{    
				idc = 7;
				type = 11;
				style = 0;
				x = 0.83; 
				y = 0.14;
				h = 0.066;
				w = 0.4;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0};
				sizeEx = 0.03;
				color[] =  {0.471,0.471,0.471,0};
				colorActive[] =  {0.537,0.369,0.102,0};
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "_ok = _this execVM 'scripts\infocenter\diaStart.sqf';";
				text = "---Spare---";
					
			}; 
			class text_box_center
			{    
				idc = -1;
				type = 13;
				style = 16;
				x = 0.0; 
				y = 0.24;
				h = 0.54;
				w = 1.0;
				font = "EtelkaNarrowMediumPro";
				size = 0.035;
				lineSpacing = 1;
				colorBackground[] = {0,0,0,0}; 
				colorText[] =  {0.537,0.369,0.102,1};
				text = "<t color='#895e1a'>Schwall, schwall</t>";
				fixedWidth = 0;
				shadow = 0;
				access = 0;
				border = 0;
			}; 
	
	
};
};

