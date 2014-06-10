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

class rscMapControl
{
	access = 0;
	alphaFadeEndScale = 1;
	alphaFadeStartScale = 0;
	colorBackground[] = {0.969,0.957,0.949,1};
	colorCountlines[] = {0.572,0.354,0.188,0.25};
	colorCountlinesWater[] = {0.491,0.577,0.702,0.3};
	colorForest[] = {0.624,0.78,0.388,0.5};
	colorForestBorder[] = {0,0,0,0};
	colorGrid[] = {0.1,0.1,0.1,0.6};
	colorGridMap[] = {0.1,0.1,0.1,0.6};
	colorInactive[] = {1,1,1,0.5};
	colorLevels[] = {0.286,0.177,0.094,0.5};
	colorMainCountlines[] = {0.572,0.354,0.188,0.5};
	colorMainCountlinesWater[] = {0.491,0.577,0.702,0.6};
	colorMainRoads[] = {0.9,0.5,0.3,1};
	colorMainRoadsFill[] = {1,0.6,0.4,1};
	colorNames[] = {0.1,0.1,0.1,0.9};
	colorOutside[] = {0,0,0,1};
	colorPowerLines[] = {0.1,0.1,0.1,1};
	colorRailWay[] = {0.8,0.2,0,1};
	colorRoads[] = {0.7,0.7,0.7,1};
	colorRoadsFill[] = {1,1,1,1};
	colorRocks[] = {0,0,0,0.3};
	colorRocksBorder[] = {0,0,0,0};
	colorSea[] = {0.467,0.631,0.851,0.5};
	colorText[] = {0,0,0,1};
	colorTracks[] = {0.84,0.76,0.65,0.15};
	colorTracksFill[] = {0.84,0.76,0.65,1};
	font = "TahomaB";
	fontGrid = "TahomaB";
	fontInfo = "PuristaMedium";
	fontLabel = "PuristaMedium";
	fontLevel = "TahomaB";
	fontNames = "PuristaMedium";
	fontUnits = "TahomaB";
	h = "SafeZoneH - 1.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	maxSatelliteAlpha = 0.85;
	moveOnEdges = 0;
	ptsPerSquareCLn = 10;
	ptsPerSquareCost = 10;
	ptsPerSquareExp = 10;
	ptsPerSquareFor = 9;
	ptsPerSquareForEdge = 9;
	ptsPerSquareObj = 9;
	ptsPerSquareRoad = 6;
	ptsPerSquareSea = 5;
	ptsPerSquareTxt = 3;
	scaleDefault = 0.16;
	scaleMax = 1;
	scaleMin = 0.001;
	shadow = 0;
	showCountourInterval = 0;
	sizeEx = 0.04;
	sizeExGrid = 0.02;
	sizeExInfo = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	sizeExLabel = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	sizeExLevel = 0.02;
	sizeExNames = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8) * 2";
	sizeExUnits = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	stickX[] = {0.2,["Gamma",1,1.5]};
	stickY[] = {0.2,["Gamma",1,1.5]};
	style = 48;
	text = "#(argb,8,8,3)color(1,1,1,1)";
	type = 101;
	w = "SafeZoneWAbs";
	x = "SafeZoneXAbs";
	y = "SafeZoneY + 1.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	class ActiveMarker
	{
		color[] = {0.3,0.1,0.9,1};
		size = 50;
	};
	class Bunker
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		importance = "1.5 * 14 * 0.05";
		size = 14;
	};
	class Bush
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0.45,0.64,0.33,0.4};
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		importance = "0.2 * 14 * 0.05 * 0.05";
		size = "14/2";
	};
	class BusStop
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\busstop_CA.paa";
		importance = 1;
		size = 24;
	};
	class Chapel
	{
		coefMax = 4;
		coefMin = 0.85;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\Chapel_CA.paa";
		importance = 1;
		size = 24;
	};
	class Church
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\church_CA.paa";
		importance = 1;
		size = 24;
	};
	class Command
	{
		coefMax = 1;
		coefMin = 1;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		importance =1;
		size = 18;
	};
	class Cross
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\Cross_CA.paa";
		importance = 1;
		size = 24;
	};
	class CustomMark
	{
		coefMax = 1;
		coefMin = 1;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\custommark_ca.paa";
		importance = 1;
		size = 24;
	};
	class Fortress
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\bunker_ca.paa";
		importance = "2 * 16 * 0.05";
		size = 16;
	};
	class Fountain
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\fountain_ca.paa";
		importance = "1 * 12 * 0.05";
		size = 11;
	};
	class Fuelstation
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\fuelstation_CA.paa";
		importance = 1;
		size = 24;
	};
	class Hospital
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\hospital_CA.paa";
		importance = 1;
		size = 24;
	};
	class Legend
	{
		color[] = {0,0,0,1};
		colorBackground[] = {1,1,1,0.5};
		font = "PuristaMedium";
		h = "3.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
		w = "10 * 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		x = "SafeZoneX + 					(			((safezoneW / safezoneH) min 1.2) / 40)";
		y = "SafeZoneY + safezoneH - 4.5 * 					(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	class Lighthouse
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\lighthouse_CA.paa";
		importance = 1;
		size = 24;
	};
	class power
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\power_CA.paa";
		importance = 1;
		size = 24;
	};
	class powersolar
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\powersolar_CA.paa";
		importance = 1;
		size = 24;
	};
	class powerwind
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\powerwind_CA.paa";
		importance = 1;
		size = 24;
	};
	class powerwave
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\powerwave_CA.paa";
		importance = 1;
		size = 24;
	};
	class Quay
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\quay_CA.paa";
		importance = 1;
		size = 24;
	};
	class Rock
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0.1,0.1,0.1,0.8};
		icon = "\A3\ui_f\data\map\mapcontrol\rock_ca.paa";
		importance = "0.5 * 12 * 0.05";
		size = 12;
	};
	class Ruin
	{
		coefMax = 4;
		coefMin = 1;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\ruin_ca.paa";
		importance = "1.2 * 16 * 0.05";
		size = 16;
	};
	class shipwreck
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\shipwreck_CA.paa";
		importance = 1;
		size = 24;
	};
	class SmallTree
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0.45,0.64,0.33,0.4};
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		importance = "0.6 * 12 * 0.05";
		size = 12;
	};
	class Stack
	{
		coefMax = 4;
		coefMin = 0.9;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\stack_ca.paa";
		importance = "2 * 16 * 0.05";
		size = 20;
	};
	class Task
	{
		coefMax = 1;
		coefMin = 1;
		color[] = {"(profilenamespace getvariable ['IGUI_TEXT_RGB_R',0])","(profilenamespace getvariable ['IGUI_TEXT_RGB_G',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_B',1])","(profilenamespace getvariable ['IGUI_TEXT_RGB_A',0.8])"};
		colorCanceled[] = {0.7,0.7,0.7,1};
		colorCreated[] = {1,1,1,1};
		colorDone[] = {0.7,1,0.3,1};
		colorFailed[] = {1,0.3,0.2,1};
		icon = "\A3\ui_f\data\map\mapcontrol\taskIcon_CA.paa";
		iconCanceled = "\A3\ui_f\data\map\mapcontrol\taskIconCanceled_CA.paa";
		iconCreated = "\A3\ui_f\data\map\mapcontrol\taskIconCreated_CA.paa";
		iconDone = "\A3\ui_f\data\map\mapcontrol\taskIconDone_CA.paa";
		iconFailed = "\A3\ui_f\data\map\mapcontrol\taskIconFailed_CA.paa";
		importance = 1;
		size = 27;
	};
	class Tourism
	{
		coefMax = 4;
		coefMin = 0.7;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\tourism_ca.paa";
		importance = "1 * 16 * 0.05";
		size = 16;
	};
	class Transmitter
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\transmitter_CA.paa";
		importance = 1;
		size = 24;
	};
	class Tree
	{
		coefMax = 4;
		coefMin = 0.25;
		color[] = {0.45,0.64,0.33,0.4};
		icon = "\A3\ui_f\data\map\mapcontrol\bush_ca.paa";
		importance = "0.9 * 16 * 0.05";
		size = 12;
	};
	class ViewTower
	{
		coefMax = 4;
		coefMin = 0.5;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\viewtower_ca.paa";
		importance = "2.5 * 16 * 0.05";
		size = 16;
	};
	class Watertower
	{
		coefMax = 1;
		coefMin = 0.85;
		color[] = {1,1,1,1};
		icon = "\A3\ui_f\data\map\mapcontrol\watertower_CA.paa";
		importance = 1;
		size = 24;
	};
	class Waypoint
	{
		coefMax = 1;
		coefMin = 1;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\waypoint_ca.paa";
		importance = 1;
		size = 24;
	};
	class WaypointCompleted
	{
		coefMax = 1;
		coefMin = 1;
		color[] = {0,0,0,1};
		icon = "\A3\ui_f\data\map\mapcontrol\waypointCompleted_ca.paa";
		importance = 1;
		size = 24;
	};
};

class artiMain
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
				text = "pictures\laptop_1.paa";
				fixedWidth = 0;
				shadow = 0;
				lineSpacing = 0;
			}; 
	
	class Slider_anzahl
			{
				idc = 101; 
				type = 3; 
				style = 0x400; 
				x = 0.80; 
				y = 0.13; 
				w = 0.3; 
				h = 0.025; 
				color[] = { 1, 1, 1, 1 }; 
				coloractive[] = { 1, 1, 1, 1 };
				onSliderPosChanged = "Arti_Anzahl = round (sliderposition 101);";
				
			};
			class Granatenanzahl_Slider_0
{
 access = 0;
 type = 0;
 idc = -1;
 style = 2;
 w = 0.15; h = 0.05;
 x = 0.73;   y = 0.085;
 font = "TahomaB";
 sizeEx = 0.02;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 text = "0";
 fixedWidth = 0;
 shadow = 0;
};		
			class Granatenanzahl_Slider_1
{
 access = 0;
 type = 0;
 idc = -1;
 style = 2;
 w = 0.15; h = 0.05;
 x = 0.83;   y = 0.085;
 font = "TahomaB";
 sizeEx = 0.02;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 text = "1";
 fixedWidth = 0;
 shadow = 0;
};		
			class Granatenanzahl_Slider_2
{
 access = 0;
 type = 0;
 idc = -1;
 style = 2;
 w = 0.15; h = 0.05;
 x = 0.92;   y = 0.085;
 font = "TahomaB";
 sizeEx = 0.02;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 text = "2";
 fixedWidth = 0;
 shadow = 0;
};		
			class Granatenanzahl_Slider_3
{
 access = 0;
 type = 0;
 idc = -1;
 style = 2;
 w = 0.15; h = 0.05;
 x = 1.015;   y = 0.085;
 font = "TahomaB";
 sizeEx = 0.02;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 text = "3";
 fixedWidth = 0;
 shadow = 0;
};		

			
	class Munitionswahl 
			{
				idc = 102;
  type = 6;  
  style = 2; 

  x = 0.8;
  y = 0.27;
  w = 0.3;
  h = 0.3;
  
  colorText[] = {1, 1, 1, 1};
  color[] = {0, 0, 0, 1};    
  colorTextSelect[] = {1, 0, 0, 1};
  colorSelect[] = {0, 0, 1, 1};
  colorTextDisable[] = {0.4, 0.4, 0.4, 1};
  colorDisable[] = {0.4, 0.4, 0.4, 1};
  colorBackground[] = {0.176,0.176,0.176,1};
  colorSelectedBg[] = {0, 0, 0, 0};
	text = "";
  font = "TahomaB";
  sizeEx = 0.030;
  rows = 3;
  columns = 2;
  strings[] = {"Rauch","Phosphor","Flare Rot","Flare Weiss"};
  values[] = {1,1,0,1,0,0};
  onToolBoxSelChanged = "Arti_Munition = (_this select 1);"
			};	
			
	class Ziel_Karte: rscMapControl
		{
			idc = 103;
			maxSatelliteAlpha = 0;
			x = 0.23 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.35 * safezoneW;
			h = 0.35 * safezoneH;
			onMouseButtonClick = "Arti_Ziel = (_this select 0) ctrlMapScreenToWorld [_this select 2, _this select 3];ctrlEnable [104, true];";
           
		};	
class Granatenanzahl
{
 access = 0;
 type = 0;
 idc = -1;
 style = 2;
 w = 0.45; h = 0.05;
 x = 0.72;   y = 0.01;
 font = "TahomaB";
 sizeEx = 0.03;
 colorBackground[] = {0.176,0.176,0.176,1};
 colorText[] = {1,1,1,1};
 text = "Anzahl";
 fixedWidth = 0;
 shadow = 1;
 borderSize = 0.008;
};
class Ladung
{
 access = 0;
 type = 0;
 idc = -1;
 style = 2;
 w = 0.45; h = 0.05;
 x = 0.72;   y = 0.22;
 font = "TahomaB";
 sizeEx = 0.03;
 colorBackground[] = {0.176,0.176,0.176,1};
 colorText[] = {1,1,1,1};
 text = "Ladung";
 fixedWidth = 0;
 shadow = 1;
 borderSize = 0.008;
};	
class Feuer {
	idc = 104;
	type = 1;
	style = 2;
	default = false;
	font = TahomaB;
	sizeEx = 0.03;
	colorText[] = { 1, 1, 1, 1 };
	colorFocused[] = { 1, 0, 0, 1 };   
	colorDisabled[] = {0.667,0,0,0.7};
	colorBackground[] = {0.176,0.176,0.176,1};
	colorBackgroundDisabled[] = {0.176,0.176,0.176,0.5};  
	colorBackgroundActive[] = {0.176,0.176,0.176,1};   
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorShadow[] = { 0, 0, 0, 0.5 };
	colorBorder[] = { 0, 0, 0, 1 };
	borderSize = 0;
	soundEnter[] = { "", 0, 1 };  // no sound
	soundPush[] = { "", 0, 1 };
	soundClick[] = { "", 0, 1 };  // no sound
	soundEscape[] = { "", 0, 1 };  // no sound
	x = 0.85;
	y = 0.57;
	w = 0.2; h = 0.05;
	text = "Feuer";
	action = "closeDialog 0; hint ""Befehl zum Feuern wurde erteilt""; []execVM 'scripts\artillerie\Arti_feuer.sqf';";
};
			
	};
};