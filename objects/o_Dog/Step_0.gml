//WallCollision
if (place_meeting(x,y,o_Wall) && GetAwayFromWall==true)
{
	GetAwayFromWall=false;
	FindAnotherPosition=true;
}
else if (!place_meeting(x,y,o_Wall))
{
	GetAwayFromWall=true;
}


if (DogState="Walking")
{
	if (FoundArea==false)
	{
		for (var i = 0; i <= 7; i += 1)
		{
			var Area=ds_list_find_value(o_Player.AreaList,i);
			if (Area.AreaNumber==DogAreaDirection)
			{
				FoundArea=true;
				AreaToFollow=Area;
				AreaToFollow.image_index=1;
				if (place_meeting(AreaToFollow.x,AreaToFollow.y,o_Wall))
				FindAnotherPosition=true;
			}
		}
	}
	
	if (FoundArea==true)
	{
		move_towards_point (AreaToFollow.x, AreaToFollow.y, WalkingSpeed);
	}
	
	if (position_meeting(x,y,AreaToFollow))
	{
		DogState="Dragging";
		AreaToFollow.image_index=0;
		speed=0;
	}
}

if (DogState=="Dragging")
{
	if (alarm[0]<=0)
	alarm[0]=100;
	
	if (ForcePositionTest==false)
	{
		if (AreaToFollow.AreaNumber==0)
		{
			DogDirection=135;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==1)
		{
			DogDirection=90;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==2)
		{
			DogDirection=45;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==3)
		{
			DogDirection=0;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==4)
		{
			DogDirection=315;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==5)
		{
			DogDirection=270;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==6)
		{
			DogDirection=225;
			ForcePositionTest=true;
		}
		else if (AreaToFollow.AreaNumber==7)
		{
			DogDirection=180;
			ForcePositionTest=true;
		}
	}
}




if (FoundArea==true && !position_meeting(x,y,AreaToFollow))
{
	move_towards_point (AreaToFollow.x, AreaToFollow.y, WalkingSpeed);
}

else
speed=0;


if (FindAnotherPosition==true)
{
	speed=0;
	alarm[0]=1;
}





