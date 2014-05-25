// _nul = [this] execVM "scripts\kuma\init.sqf";

_kuma = _this select 0;

_kuma animate ["HideHull", 1];
_kuma animate ["HideTurret", 0];

_kuma setObjectTextureGlobal
[0, "scripts\kuma\TankBodyTexture.paa"];
_kuma setObjectTextureGlobal
[1, "scripts\kuma\TankTurretTexture.paa"];
_kuma setObjectTextureGlobal
[2, "scripts\kuma\TankTurretMGTexture.paa"];
_kuma setObjectTextureGlobal
[3, "scripts\kuma\TankTrackTexture.paa"];