/*
Creative Commons Lizenzvertrag
Okkupation Altis von http://www.Arma-Unif.de ist lizenziert unter einer
Creative Commons Namensnennung - Nicht kommerziell - Keine Bearbeitungen 4.0 International Lizenz.
http://creativecommons.org/licenses/by-nc-nd/4.0/deed.de

Creative Commons License
Okkupation Altis by http://www.Arma-Unif.de  licensed under a
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
http://creativecommons.org/licenses/by-nc-nd/4.0/

*/
_killer = _this select 1;
if (player == _killer) then {
    disableUserInput true;
    player setPos getPos jail;
    Hint "You are being punished for killing a civilian";
    player setDir 0;
    sleep 30;
    hint "Don't do it again!!!";
    disableUserInput false;
    player setPos getMarkerPos "in";
};




/*
_unit = _this select 0;

_eh = _unit addEventHandler ["killed", 
    {
        _killer = _this select 1;
        if (side _killer == WEST) then {
         disableUserInput true;
		 _n = 0;
			while {_n < 15} do
			{
				titleText ["Der Tod ist gewissermassen eine Unmöglichkeit, die plötzlich zur Wirklichkeit wird. -Johann Wolfgang von Goethe" ,"BLACK FADED"];
				_n = _n + 1;
				sleep 1;
			};
			disableUserInput false;
        };
    };
];  
*/
