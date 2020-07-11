hInput= keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));
MouseClick = mouse_check_button(mb_left);

if (hInput !=0 || vInput !=0){
	Direction = point_direction(0,0,hInput, vInput);
	
	if (o_Dog.DogState=="Dragging" || o_Dog.DogState=="Walking")
	{
		MoveX= lengthdir_x(WalkSpeedDragging, Direction)
		MoveY= lengthdir_y(WalkSpeedDragging, Direction)
	}
	else
	{
		MoveX= lengthdir_x(WalkSpeed, Direction)
		MoveY= lengthdir_y(WalkSpeed, Direction)
	}
	
	
	
	
	if (!place_meeting(x+MoveX,y,o_LesserWall))
	x += MoveX;
	if (!place_meeting(x,y+MoveY,o_LesserWall))
	y += MoveY;
}

if (instance_exists(o_Dog))
{
	for (var i = 0; i < instance_number(o_Dog); i += 1)
    {
		var DogInstance=instance_find(o_Dog, i);
		if (DogInstance.DogState=="Dragging" && DogInstance.DogDirection!=600)
		{

			DogMoveX= lengthdir_x(DogInstance.DogSpeedDraggingForceCalculated, DogInstance.DogDirection)
			DogMoveY= lengthdir_y(DogInstance.DogSpeedDraggingForceCalculated, DogInstance.DogDirection)
		
			if (!place_meeting(x+DogMoveX,y,o_LesserWall))
			{
				part_particles_create(mySystem,x+irandom_range(-5,5),y+5,myParticle,1);
				x += DogMoveX/instance_number(o_Dog);
			}
			else
			y+= SlipperySpeed/instance_number(o_Dog);

		
			if (!place_meeting(x,y+DogMoveY,o_LesserWall))
			{
				part_particles_create(mySystem,x+irandom_range(-5,5),y+5,myParticle,1);
				y += DogMoveY/instance_number(o_Dog);
			}
			else
			x+= SlipperySpeed/instance_number(o_Dog);
		}
	}
}

//Mirror Image
if (MoveX>0)
image_xscale=1;
else
image_xscale=-1;