VolumeKey=keyboard_check_pressed(ord("V"))

if (o_Dog.DogState=="Sitted")
{
	if (!audio_is_playing(s_MainThemeCalm))
	audio_play_sound(s_MainThemeCalm,0,1);
	
	if (!audio_is_playing(s_AmbienceSound))
	audio_play_sound(s_AmbienceSound,0,1);
}

if (VolumeKey==true)
{
	if (GeneralVolume!=0)
	GeneralVolume-=0.1;
	else
	GeneralVolume=0.5;
	
	audio_master_gain(GeneralVolume);
}


