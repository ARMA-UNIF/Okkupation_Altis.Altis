/*
	@version: 2.0
	@file_name: fn_mainInit.sqf
	@file_author: TAW_Tonic
	@file_edit: 9/24/2013
	@file_description: Only called once during the initialization of VAS and uses compileFinal on all VAS functions.
*/
[] spawn
{
	if(isNil "VAS_init_complete") then
	{
		private["_handle"];
		VAS_init_timeOnStart = time;
		VAS_init_complete = false;
		_handle = [] execVM "VAS\config.sqf";
		waitUntil {scriptDone _handle;};
		if(isNil "VAS_fnc_buildConfig") exitWith {diag_log "::VAS:: function VAS_fnc_buildConfig is nil"};
		["CfgWeapons"] call VAS_fnc_buildConfig;
		["CfgMagazines"] call VAS_fnc_buildConfig;
		["CfgVehicles"] call VAS_fnc_buildConfig;
		["CfgGlasses"] call VAS_fnc_buildConfig;
		VAS_init_complete = true;
	}
		else
	{
		VAS_init_timeOnStart = time;
		[] call compile PreprocessFileLineNumbers "VAS\config.sqf";
		["CfgWeapons"] call VAS_fnc_buildConfig;
		["CfgMagazines"] call VAS_fnc_buildConfig;
		["CfgVehicles"] call VAS_fnc_buildConfig;
		["CfgGlasses"] call VAS_fnc_buildConfig;
		
		sleep 2.5;
		if(!isNil "vas_r_weapons") then { VAS_init_complete = true; };
	};
	
	waitUntil {!isNull player && player == player};
	if(player diarySubjectExists "VAS")exitwith{};
	player createDiarySubject ["VAS","Additional Credits"];
	player createDiaryRecord["VAS",["Virtual Ammobox System (VAS) v2.0","<br/><br/>Virtual Ammobox System (VAS) is a virtual ammobox inventory system created by Tonic AKA TAW_Tonic. If you have any problems with VAS please report them on the forums.<br/><br/>Virtual Ammobox BIS Topic: http://forums.bistudio.com/showthread.php?149077-Virtual-Ammobox-System-%28VAS%29<br/><br/><h1>Credits and Thanks:<br/><br/>Kronzky<br/>For his string function library<br/><br/>SaMatra<br/>For help with UI Resources and Russian Translation<br/><br/>Dslyecxi<br/>For his Paper doll giving insight on how to detect item types.<br/><br/>Tyrghen on Armaholic<br/>For giving me the tip about CfgFunctions<br/><br/>Naong<br/>For his code tweaks to the Load / Save display.<br/><br/>Coding from armaholic<br/>Translation of VAS from English->German<br/><br/>El Nabot from Armaholic<br/>Translation of VAS from English->French<br/><br/>Czesiek77 from Armaholic<br/>Translation of VAS from English->Polish<br/><br/>Ficc from BIS Forums<br/>Translation of VAS from English->Portuguese<br/><br/>Ramius86 on BIS Forums<br/>Translation of VAS from English->Italian<br/><br/>RabsRincon on Armaholic<br/>Translation of VAS from English->Spanish<br/><br/>Bakarda on BIS/Armaholic<br/>Translation of VAS from English->Czech<br/></h1>"]];};