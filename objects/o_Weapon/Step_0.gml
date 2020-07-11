x = o_Player.x;
y = o_Player.y;

image_angle = o_Dog.DogDirection+180;


//image_angle = point_direction(x,y,mouse_x,mouse_y);


with (o_Player)
{
	if (MouseClick==true && FiringDelay<=0 && o_Dog.PetTheDog==false)
	{
		FiringDelay=FiringDelayValue;
		var _xx = x + lengthdir_x(DistanceForBulletSpawn, other.image_angle);
		var _yy = y + lengthdir_y(DistanceForBulletSpawn, other.image_angle);

		with (instance_create_layer(_xx,_yy,"Bullets",o_Bullet))
		{
			speed = o_Player.BulletSpeed;
			direction = o_Weapon.image_angle + random_range(-o_Player.BulletSpread,o_Player.BulletSpread);
			image_angle = direction;
		
		}
	}

	FiringDelay--;
}