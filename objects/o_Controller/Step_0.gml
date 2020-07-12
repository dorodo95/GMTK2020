KeyDebug=keyboard_check_pressed(vk_f1);
KeyReset=keyboard_check_pressed(ord("R"));
KeyTest=keyboard_check_pressed(ord("T"));


if (KeyTest)
{
	if (instance_exists(o_Enemy01) )
	o_Enemy01.PlayerReceivedDamage=true;
	instance_create_layer(o_Player.x,o_Player.y,"UI",o_DamageExplosion);

}




if (KeyDebug)
{
	if (global.DebugOn==false)
	global.DebugOn=true;
	else
	global.DebugOn=false;
}

if (KeyReset)
{
	with (instance_create_layer(x,y,"UI",o_Transition))
	RoomNumber=1;
}
//room_restart();
	
