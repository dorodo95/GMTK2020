if (AreaNumber==0)
{
		x=o_Player.x-(PlayerXDistance/1.5);
		y=o_Player.y-(PlayerYDistance/1.5);
}


else if (AreaNumber==1)
{
	x=o_Player.x
	y=o_Player.y-PlayerYDistance;
}
else if (AreaNumber==2)
{
	x=o_Player.x+(PlayerXDistance/1.5);
	y=o_Player.y-(PlayerYDistance/1.5);
}
else if (AreaNumber==3)
{
	x=o_Player.x+PlayerXDistance;
	y=o_Player.y;

}
else if (AreaNumber==4)
{
	x=o_Player.x+(PlayerXDistance/1.5);
	y=o_Player.y+(PlayerYDistance/1.5);
}
else if (AreaNumber==5)
{

	x=o_Player.x;
	y=o_Player.y+PlayerYDistance;
}
else if (AreaNumber==6)
{
	x=o_Player.x-(PlayerXDistance/1.5);
	y=o_Player.y+(PlayerYDistance/1.5);
}
else if (AreaNumber==7)
{
	x=o_Player.x-PlayerXDistance;
	y=o_Player.y;
}




if (instance_exists(o_Controller))
{
	if (global.DebugOn==true)
	visible=true;
	else
	visible=false;
	
}