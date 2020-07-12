hInput= ((keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A"))));
vInput = ((keyboard_check(vk_down) || keyboard_check(ord("S"))) - (keyboard_check(vk_up) || keyboard_check(ord("W"))));
Input1Pressed = (keyboard_check(ord("X")) || keyboard_check(vk_space));
CtrlKeyPressed = keyboard_check_pressed(vk_control);

if (CtrlKeyPressed)
global.CtrlKey++;

if ((hInput !=0 || vInput !=0) && o_Dog.DogState!="PetTheDogHappening"){
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
	
	
	if (alarm[1]<=0)
	{
		alarm[1]=13;
		audio_play_sound(choose(s_Footstep1,s_Footstep2,s_Footstep3,s_Footstep4,s_Footstep5,s_Footstep6,s_Footstep7,s_Footstep8),0,0);
	}
	
	if (!place_meeting(x+MoveX,y,o_LesserWall))
	x += MoveX;
	if (!place_meeting(x,y+MoveY,o_LesserWall))
	y += MoveY;
	
	sprite_index=s_Player_walk;
	
}
else
{
	if (o_Dog.DogState!="PetTheDogHappening")
	sprite_index=s_Player;
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
				part_particles_create(mySystem,x+irandom_range(-5,5),y+10,myParticle,1);
				x += DogMoveX/instance_number(o_Dog);
			}
			else
			y+= SlipperySpeed/instance_number(o_Dog);

		
			if (!place_meeting(x,y+DogMoveY,o_LesserWall))
			{
				part_particles_create(mySystem,x+irandom_range(-5,5),y+10,myParticle,1);
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


if (HP<=0)
{
	global.LastWave=o_WavesAI.WaveNumber;
	{
		with (instance_create_layer(x,y,"UI",o_Transition))
		RoomNumber=1;
	}
}

//CreateWeapon
//if (!instance_exists(o_Weapon))
//{
//	if (o_Dog.DogState=="Walking")
//	instance_create_layer(x,y,"Weapon",o_Weapon);
//}




//StopPetting
if (sprite_index==s_PlayerPetDog)
{
	if (image_index > image_number - 1)
	{
		sprite_index=s_Player;
	}
}

