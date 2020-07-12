x = o_Player.x;
y = o_Player.y+8;

if (o_Dog.DogState=="Dragging" || o_Dog.DogState=="Walking" )
image_angle = point_direction(x, y, o_Dog.x, o_Dog.y)+180;
else
{
	if (o_Player.MoveX>0)
	image_angle=0;
	else
	image_angle=180;
}


with (o_Player)
{
	if (Input1Pressed==true && FiringDelay<=0 && o_Dog.PetTheDog==false)
	{
		audio_sound_pitch(s_Shoot,random_range(0.9,1.2));
		audio_play_sound(s_Shoot,0,0);
		part_particles_create(other.mySystem,x+irandom_range(-5,5),y+irandom_range(-5,5),other.myParticle,1);
		o_Camera.ScreenShakeOn=true;
		FiringDelay=FiringDelayValue;
		var _xx = other.x + lengthdir_x(DistanceForBulletSpawn, other.image_angle);
		var _yy = other.y + lengthdir_y(DistanceForBulletSpawn, other.image_angle);
		
		other.image_speed=1;
		with (instance_create_layer(_xx,_yy,"Bullets",o_Bullet))
		{
			speed = o_Player.BulletSpeed;
			direction = o_Weapon.image_angle + random_range(-o_Player.BulletSpread,o_Player.BulletSpread);
		
		}
	}

	FiringDelay--;
}

if (image_speed > 0)
{
	if (image_index > image_number - 1)
	{
		image_speed=0;
		image_index=0;
	}
}