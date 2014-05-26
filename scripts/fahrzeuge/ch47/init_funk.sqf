// _nul = [this] execVM "scripts\fahrzeuge\ch47\init_funk.sqf";

_ch47 = _this select 0;

_ch47 setVariable ["tf_hasRadio", true, true];
_ch47 setVariable ["tf_isolatedAmount", 0.4, true];
_ch47 setVariable ["tf_range", 40000, true];
_ch47 setVariable ["TF_RadioType", "tf_anarc210", true];