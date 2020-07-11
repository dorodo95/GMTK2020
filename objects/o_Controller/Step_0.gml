KeyDebug=keyboard_check_pressed(vk_f1);



if (KeyDebug)
{
	if (global.DebugOn==false)
	global.DebugOn=true;
	else
	global.DebugOn=false;
}