if (CanKeepGoing==true)
{
	Y1+=Acceleration;
	Y2+=Acceleration;
}

if (Y1>=0 && OneTrigger==false)
{
	room_goto(RoomNumber);
	CanKeepGoing=false;
	alarm[0]=10;
	OneTrigger=true;
	if (instance_exists(o_Weapon))
	part_particles_clear(o_Weapon.mySystem);

	if (audio_is_playing(s_ActionSong))
	audio_stop_sound(s_ActionSong);
	
}


if (Y1>500)
{
	audio_play_sound(s_GameOver,0,0);
	instance_destroy();
}


