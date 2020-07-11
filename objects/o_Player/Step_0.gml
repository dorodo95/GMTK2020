hInput= keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);

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