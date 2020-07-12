if (distance_to_object(o_Player)<30)
{
	CloseEnough=true;
	if (Randomize==true)
	{
		Randomize=false;
		ds_list_shuffle(RandomTalk);
	}
}

else
{
	Randomize=true;
	CloseEnough=false;
}

if (o_Dog.DogState=="Walking")
instance_destroy();