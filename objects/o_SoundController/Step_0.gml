VolumeKey=keyboard_check_pressed(ord("V"))

if (o_Dog.DogState=="Sitted")
{
	if (!audio_is_playing(s_MainThemeCalm))
	audio_play_sound(s_MainThemeCalm,0,1);
}

if (VolumeKey==true)
{
	if (GeneralVolume!=0)
	GeneralVolume-=0.2;
	else
	GeneralVolume=1;
	
	audio_master_gain(GeneralVolume);
}

