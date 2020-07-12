if (instance_exists(o_WavesAI))
{
	if (o_WavesAI.ChangeWave==false && !instance_exists(o_Enemy01) && o_WavesAI.WaveFinished==true && DogState!="PetTheDogHappening" && DogState!="Sitted")
	{
		DogState="Sitted";
	}
}


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
	//FootstepSound
	if (alarm[2]<=0)
	{
		audio_play_sound(choose(s_Footstep1,s_Footstep2,s_Footstep3,s_Footstep4,s_Footstep5,s_Footstep6,s_Footstep7,s_Footstep8),0,0);
		alarm[2]=FootStepSpeed;
	}
}

if (DogState=="Dragging")
{
	if (alarm[0]<=0)
	alarm[0]=TimeToChangePosition;
	
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
	//FootstepSound
	if (alarm[2]<=0)
	{
		audio_play_sound(choose(s_Footstep1,s_Footstep2,s_Footstep3,s_Footstep4,s_Footstep5,s_Footstep6,s_Footstep7,s_Footstep8),0,0);
		alarm[2]=FootStepSpeed;
	}
}

if (DogState=="Sitted")
{
	speed=0;
	FoundArea=false;
	sprite_index=s_Dog;
	if (PetTheDog==true && o_Player.Input1Pressed==true)
	{
		alarm[0]=0;
		if (o_WavesAI.WaveNumber<=4)
		{
			WalkingSpeed+=0.3;
			DogSpeedDraggingForce=WalkingSpeed;
			DogSpeedDraggingForceCalculated=DogSpeedDraggingForce-o_Player.WalkSpeedDragging;
		}
		else if (o_WavesAI.WaveNumber>4)
		{
			WalkingSpeed+=0.2;
			DogSpeedDraggingForce=WalkingSpeed;
			DogSpeedDraggingForceCalculated=DogSpeedDraggingForce-o_Player.WalkSpeedDragging;			
		}
		DogState="PetTheDogHappening";
		audio_play_sound(s_PatDog,0,0);
		o_Player.x=x+9;
		o_Player.y=y-3;
		o_Player.sprite_index=s_PlayerPetDog;
		o_WaveStarter.alarm[0]=o_WaveStarter.TimeForAlarm0;
	}
}

if (DogState=="PetTheDogHappening" && o_Player.sprite_index!=s_PlayerPetDog)
{
	part_particles_create(mySystem,x+irandom_range(-RangeToSpawnParticle,RangeToSpawnParticle),y+irandom_range(-RangeToSpawnParticle,RangeToSpawnParticle),myParticle,1);
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





if (DogState=="Sitted" && point_distance(x,y,o_Player.x,o_Player.y)<DinstanceToPet)
PetTheDog=true;
else
PetTheDog=false;


//Mirror Image
if (o_Player.x>x)
image_xscale=1;
else
image_xscale=-1;


FootStepSpeed=15-WalkingSpeed;
AnimationSpeed=WalkingSpeed;

image_speed=AnimationSpeed;
