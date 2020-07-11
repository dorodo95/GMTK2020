hInput= keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
MouseClick = mouse_check_button(mb_left);

if (hInput !=0 || vInput !=0){
	Direction = point_direction(0,0,hInput, vInput);

	MoveX= lengthdir_x(WalkSpeed, Direction)
	MoveY= lengthdir_y(WalkSpeed, Direction)

	x += MoveX;
	y += MoveY;
}

if (instance_exists(o_Dog))
{
	if (o_Dog.DogState=="Dragging" && o_Dog.DogDirection!=600){

		DogMoveX= lengthdir_x(DogSpeed, o_Dog.DogDirection)
		DogMoveY= lengthdir_y(DogSpeed, o_Dog.DogDirection)

		x += DogMoveX;
		y += DogMoveY;
	}
}

image_angle = point_direction(x,y,mouse_x,mouse_y);



if (MouseClick==true && FiringDelay<=0)
{
	FiringDelay=FiringDelayValue;
	var _xx = x + lengthdir_x(DistanceForBulletSpawn, image_angle);
	var _yy = y + lengthdir_y(DistanceForBulletSpawn, image_angle);

	with (instance_create_layer(_xx,_yy,"Instances",o_Bullet))
	{
		speed = other.BulletSpeed;
		direction = other.image_angle + random_range(-other.BulletSpread,other.BulletSpread);
		image_angle = direction;
		
	}
}
FiringDelay--;