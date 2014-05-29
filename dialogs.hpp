class H8ER_dialog
{
	idd=-1;
	movingenable=false;
	
	class controls 
	{
	class bg
			{    
				idc = 0;
				type = 0;
				style = 2096; 
				x = -0.2; 
				y = -0.2;
				h = 1.4;
				w = 1.4;
				font = "EtelkaNarrowMediumPro";
				sizeEx = 0.05;
				colorBackground[] = {0,0,0,0}; 
				colorText[] = {1,1,1,1}; 
				text = "pictures\Tablet.jpg";
				fixedWidth = 0;
				shadow = 0;
			}; 
			class exit_knopf
			{    
				idc = 1;
				type = 11;
				style = 0;
				x = 0.831; 
				y = 0.71;
				h = 0.7;
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
				default = true;
				
			}; 
			class menu_knopf_1
			{    
				idc = 2;
				type = 11;
				style = 0;
				x = 0.0; 
				y = 0.0;
				h = 0.7;
				w = 0.6;
				font = "EtelkaNarrowMediumPro";
				colorBackground[] = { 0.2,0.9,0.5, 0.9};
				sizeEx = 0.05;
				color[] = { 1, 1, 1, 1 };
				colorActive[] = { 1, 0.2, 0.2, 1 };
				soundEnter[] = { "", 0, 1 };  
				soundPush[] = { "", 0, 1 };
				soundClick[] = { "", 0, 1 };
				soundEscape[] = { "", 0, 1 };
				action = "closeDialog 0;";
				text = "Aufgabenbereich";
				default = true;
				
			}; 
			class text_box_center
			{    
				idc = 3;
				type = 0;
				style = 16;
				x = 0.0; 
				y = 0.20;
				h = 0.7;
				w = 1.0;
				font = "EtelkaNarrowMediumPro";
				sizeEx = 0.05;
				lineSpacing = 1;
				colorBackground[] = {0,0,0,0}; 
				colorText[] = {1,1,1,1}; 
				text = "test \nHallo";
				fixedWidth = 0;
				shadow = 0;
			}; 
	
	
};
};

