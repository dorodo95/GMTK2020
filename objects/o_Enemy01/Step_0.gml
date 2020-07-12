
_xx = x + lengthdir_x(30, direction);
_yy = y + lengthdir_y(30, direction);


if (PlayerReceivedDamage==false)
{
	with(collision_circle(x, y, 12, o_Enemy01,0,0))
	move_towards_point(other.x,other.y,-Speed);


	move_towards_point(o_Player.x,o_Player.y,Speed);
}

else
{
	move_towards_point(o_Player.x,o_Player.y,-Speed*20);
	if (alarm[0]<=0)
	alarm[0]=10;
}


if (HP<=0)
instance_destroy();



