// _nul = [this] execVM "scripts\veh_init.sqf";
// {[_x] execVM "scripts\veh_init.sqf"}forEach vehicles;
_veh = _this select 0;

if (isServer) then
{
clearMagazineCargoGlobal _veh;
clearWeaponCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

_veh addItemCargoGlobal ["ToolKit", 1];
_veh addItemCargoGlobal ["FirstAidKit", 10];
};