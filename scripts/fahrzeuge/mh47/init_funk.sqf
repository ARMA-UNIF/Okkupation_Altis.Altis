// _nul = [this] execVM "scripts\fahrzeuge\mh47\init_funk.sqf";

_mh47 = _this select 0;

_mh47 setVariable ["tf_hasRadio", true, true];
_mh47 setVariable ["tf_isolatedAmount", 0.4, true];
_mh47 setVariable ["tf_range", 40000, true];
_mh47 setVariable ["TF_RadioType", "tf_anarc210", true];