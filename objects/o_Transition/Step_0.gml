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
}


if (Y1>500)
instance_destroy();

