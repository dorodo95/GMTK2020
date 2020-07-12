draw_set_font(f_PixelNarrative);
draw_set_halign(fa_right);
draw_set_color(c_white);

//Debug
if (global.DebugOn==true)
{
	draw_text(viewX+5,viewY+20,"DEBUG ON");
}

if (instance_exists(o_WavesAI))
{
	if (o_WavesAI.WaveNumber>0)
	{
		draw_text(viewX+250,viewY+5,"WAVE: " + string(o_WavesAI.WaveNumber));
	}
}

if (instance_number(o_Enemy01)<4 && instance_number(o_Enemy01)>0 && o_WavesAI.WaveFinished==true)
draw_text(camera_get_view_x(view)+250,camera_get_view_y(view)+15,"Enemies Remaining: " + string(instance_number(o_Enemy01)));





