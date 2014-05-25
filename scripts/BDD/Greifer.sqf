waitUntil { !(isNull player) };
waitUntil { time > 0 };
 
attached = false;
//Klassennamen der ziehbaren Objekte//Classnames of draggable objects 

gueter = nearestobjects [getpos player,[
"Box_IND_Ammo_F","Land_MetalBarrel_F","Land_WaterTank_F","Land_WaterBarrel_F","BWA3_Box_Gear","WL_GER_Back_Box_Flecktarn","TF_NATO_Radio_Crate","B_supplyCrate_F","IG_supplyCrate_F","O_supplyCrate_F","I_supplyCrate_F","B_Mortar_01_F","B_HMG_01_F","B_HMG_01_high_F","B_HMG_01_A_F","B_GMG_01_F","B_GMG_01_high_F","B_GMG_01_A_F","B_static_AA_F","B_static_AT_F","B_G_Mortar_01_F","O_Mortar_01_F","O_HMG_01_F","O_HMG_01_high_F","O_HMG_01_A_F","O_GMG_01_F","O_GMG_01_high_F","O_GMG_01_A_F","O_static_AA_F","O_static_AT_F","O_G_Mortar_01_F","I_G_Mortar_01_F","I_Mortar_01_F","I_GMG_01_A_F","I_static_AT_F","I_static_AA_F","I_HMG_01_A_F","I_HMG_01_high_F","I_HMG_01_F","Land_BarrelEmpty_F", "Land_BarrelSand_F", "Land_BarrelTrash_F", "Land_BarrelWater_F", "Land_MetalBarrel_F","Box_NATO_Wps_F", "Box_East_Wps_F", "Box_IND_Wps_F", "Box_East_WpsLaunch_F", "Box_NATO_WpsLaunch_F", "Box_IND_WpsLaunch_F", "Box_IND_WpsSpecial_F","Box_East_WpsSpecial_F","Box_NATO_WpsSpecial_F","BWA3_Box_Gear","WL_GER_Back_Box_Flecktarn","TF_NATO_Radio_Crate","BWA3_Box_Weapons","BWA3_Box_Attachments","BWA3_Box_Ammo","Box_NATO_AmmoOrd_F", "Box_East_AmmoOrd_F", "Box_IND_AmmoOrd_F", "Box_NATO_Grenades_F", "Box_East_Grenades_F", "Box_IND_Grenades_F", "Box_NATO_Ammo_F", "Box_East_Ammo_F", "Box_IND_Ammo_F", "Box_IND_Support_F", "Box_East_Support_F", "Box_NATO_Support_F","Land_CargoBox_V1_F","x39_medicBox","Land_Pallet_MilBoxes_F","Land_PaperBox_closed_F","Land_PaperBox_open_empty_F","Land_PaperBox_open_full_F","Box_NATO_AmmoVeh_F","Box_East_AmmoVeh_F","Box_Ind_AmmoVeh_F","Land_MetalBarrel_empty_F","MetalBarrel_burning_F","Land_BarrelSand_grey_F","Land_BarrelWater_grey_F","Land_BarrelWater_F","Land_BarrelTrash_grey_F","Land_BarrelTrash_F"
],15000] ;{_x  addAction ["<t color=""#FFAD1F"" size='1.0' shadow='2'>" +"Drag", "scripts\BDD\ziehen.sqf", "", 1,true, true, "", "!attached and player distance _target<2 and (_target getvariable ['nodrag',true])"];} foreach gueter;  

sleep 5;

//hintSilent "BDD - Bens Drag&Drop initialisiert.";