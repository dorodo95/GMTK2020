if (DogState="Walking")
{
	if (FoundArea==false)
	{
		for (var i = 0; i <= 7; i += 1)
		{
			var Area=ds_list_find_value(o_Player.AreaList,i);
			if (Area.AreaNumber==DogDirection)
			{
				FoundArea=true;
				AreaToFollow=Area;
				AreaToFollow.image_index=1;
			}
		}
	}
	
	if (FoundArea==true)
	{
		move_towards_point (AreaToFollow.x, AreaToFollow.y, WalkingSpeed);
	}
	
	if (position_meeting(x,y,AreaToFollow))
	{
		DogState="Running";
		AreaToFollow.image_index=0;
		speed=0;
	}
}

if (DogState=="Running")
{
	if (alarm[0]<=0)
	alarm[0]=100;
}









//PositionNow=ds_list_find_value(DogPosition,1);






//if (PositionNow=="TopLeft")
//{
//	DogDirection=135;
//	x=o_Player.x-200;
//	y=o_Player.y-200;
//}


//else if (PositionNow=="Top")
//{

//	DogDirection=90;
//	y=o_Player.y-200;
//	x=o_Player.x;
//}
//else if (PositionNow=="TopRight")
//{

//	DogDirection=45;
//	x=o_Player.x+200;
//	y=o_Player.y-200;
//}
//else if (PositionNow=="Right")
//{

//	DogDirection=0;
//	x=o_Player.x+200;
//	y=o_Player.y;
//}
//else if (PositionNow=="BottomRight")
//{

//	DogDirection=315;
//	x=o_Player.x+200;
//	y=o_Player.y+200;
//}
//else if (PositionNow=="Bottom")
//{

//	DogDirection=270;
//	y=o_Player.y+200;
//	x=o_Player.x;
//}
//else if (PositionNow=="BottomLeft")
//{

//	DogDirection=225;
//	x=o_Player.x-200;
//	y=o_Player.y+200;
//}
//else if (PositionNow=="Left")
//{

//	DogDirection=180;
//	x=o_Player.x-200;
//	y=o_Player.y;
//}


