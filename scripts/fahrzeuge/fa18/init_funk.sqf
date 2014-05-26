// _nul = [this] execVM "scripts\fahrzeuge\fa18\init_funk.sqf";

_fa18 = _this select 0;

_fa18 setVariable ["tf_hasRadio", true, true];
_fa18 setVariable ["tf_isolatedAmount", 0.5, true];
_fa18 setVariable ["tf_range", 40000, true];
_fa18 setVariable ["TF_RadioType", "tf_anarc210", true];