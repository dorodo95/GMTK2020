if (distance_to_object(o_Player)<40)
{
	CloseEnough=true;
	if (Randomize==true)
	{
		Randomize=false;
		ds_list_shuffle(RandomTalk);
		audio_play_sound(Sound,0,0);
	}
}
else
{
	Randomize=true;
	CloseEnough=false;
	BarkOneTime=false;
}



if (distance_to_object(o_Player)<10)
{
	if (BarkOneTime==false)
	{
		audio_play_sound(s_DogAngry,0,0);
		BarkOneTime=true;
	}
}




if (o_Dog.DogState=="Walking")
instance_destroy();