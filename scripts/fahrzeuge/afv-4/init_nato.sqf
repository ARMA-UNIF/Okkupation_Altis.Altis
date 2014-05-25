// _nul = [this] execVM "scripts\afv-4\init_nato.sqf";

_afv = _this select 0;

_afv setObjectTextureGlobal
[0, "\A3\armor_f_gamma\APC_wheeled_03\Data\apc_wheeled_03_ext_co.paa"];
_afv setObjectTextureGlobal
[1, "\A3\armor_f_gamma\APC_wheeled_03\Data\apc_wheeled_03_ext2_co.paa"];
_afv setObjectTextureGlobal
[2, "\A3\armor_f_gamma\APC_wheeled_03\Data\rcws30_co.paa"];
_afv setObjectTextureGlobal
[3, "\A3\armor_f_gamma\APC_wheeled_03\Data\apc_wheeled_03_ext_alpha_co.paa"];

if (isServer) then
{
clearMagazineCargoGlobal _afv;
clearWeaponCargoGlobal _afv;
clearItemCargoGlobal _afv;
clearBackpackCargoGlobal _afv;
};