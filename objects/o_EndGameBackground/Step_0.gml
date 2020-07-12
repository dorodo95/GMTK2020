if (AnimationMoment==false)
{
	if (keyboard_check_pressed(ord("X")))
	{
		
		with (instance_create_layer(x,y,"UI",o_Transition))
		RoomNumber=0;
		
		global.LastWave=0;
		global.ShotTheDog=0;
		global.SlimesKilled=0;
		global.CtrlKey=0;

	}
}
else
{
	if (DogPositionY<=40)
	DogPositionY+=DogAcceleration;
	else
	AnimationMoment=false;
}