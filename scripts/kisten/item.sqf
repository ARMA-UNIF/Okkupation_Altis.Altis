// null = [] execVM "scripts\kisten\item.sqf";
// Kisten oder Fahrzeuge m?ssen einen Namen haben, z.B.: item

if (isServer) then
{
clearMagazineCargoGlobal item;
clearWeaponCargoGlobal item;
clearItemCargoGlobal item;
clearBackpackCargoGlobal item;

// item addItemCargo ["ItemcTab", 8];

item addItemCargo ["ItemcTab", 8];
item addItemCargo ["ItemAndroid", 8];
item addItemCargo ["ItemCompass", 8];
item addItemCargo ["ItemGPS", 8];
item addItemCargo ["ItemRadio", 8];
item addItemCargo ["ItemMap", 8];
item addItemCargo ["MineDetector", 8];
item addItemCargo ["Binocular", 8];
item addItemCargo ["Rangefinder", 8];
item addItemCargo ["FirstAidKit", 8];
item addItemCargo ["B_UavTerminal", 1];

item addItemCargo ["G_Aviator", 1];
item addItemCargo ["G_B_Diving", 1];
item addItemCargo ["G_Combat", 1];
item addItemCargo ["G_Diving", 1];
item addItemCargo ["G_O_Diving", 1];
item addItemCargo ["G_Shades_Black", 1];
item addItemCargo ["G_Shades_Blue", 1];
item addItemCargo ["G_Shades_Green", 1];
item addItemCargo ["G_Shades_Red", 1];
item addItemCargo ["G_Spectacles", 1];
item addItemCargo ["G_Spectacles_Tinted", 1];
item addItemCargo ["G_Sport_Blackred", 1];
item addItemCargo ["G_Sport_Blackyellow", 1];
item addItemCargo ["G_Sport_BlackWhite", 1];
item addItemCargo ["G_Sport_Checkred", 1];
item addItemCargo ["G_Sport_Greenblack", 1];
item addItemCargo ["G_Sport_red", 1];
item addItemCargo ["G_Squares", 1];
item addItemCargo ["G_Squares_Tinted", 1];
item addItemCargo ["G_Tatical_Black", 1];
item addItemCargo ["G_Tatical_Clear", 1];
item addItemCargo ["G_Lowprofile", 1];
};