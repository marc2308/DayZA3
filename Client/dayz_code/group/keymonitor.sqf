if (!isnil "Press_A3") then 
{
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", Press_A3];
};

Bindings_A3 =
{
	private ["_key", "_return"];
	_key = _this select 1;
	_return = false;
    
	switch (_key) do 
	{
		case 211:		//DELETE
		{
            [] execVM "\z\addons\dayz_code\group\dialog\groupMenu.sqf";
		};
	};
    _return
};

waituntil {!isnull (finddisplay 46)};
Press_A3 = (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call Bindings_A3; false;"];