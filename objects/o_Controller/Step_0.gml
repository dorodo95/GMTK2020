KeyDebug=keyboard_check_pressed(vk_f1);
KeyReset=keyboard_check_pressed(ord("R"));


if (KeyDebug)
{
	if (global.DebugOn==false)
	global.DebugOn=true;
	else
	global.DebugOn=false;
}

if (KeyReset)
room_restart();


if (global.DebugOn==true)
visible=true;
else
visible=false;
	
