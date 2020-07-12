if (!isHit)
draw_self();

else
{
	gpu_set_fog(true, c_white, 0, 0);
	draw_self();
	gpu_set_fog(false, c_white, 0, 0);
}

draw_text(x+10,y+10,string(speed));