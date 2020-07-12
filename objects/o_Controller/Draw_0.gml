draw_set_font(f_PixelNarrative);
draw_set_halign(fa_left);
draw_set_color(c_white);

//Debug
if (global.DebugOn==true)
{
	draw_text(camera_get_view_x(view)+5,camera_get_view_y(view)+20,"DEBUG ON");
	draw_text(camera_get_view_x(view)+5,camera_get_view_y(view)+40,"Enemies Alive: " + string(instance_number(o_Enemy01)));
}

if (instance_exists(o_WavesAI))
{
	if (o_WavesAI.WaveNumber>0)
	{
		draw_text(camera_get_view_x(view)+5,camera_get_view_y(view)+5,"WAVE: " + string(o_WavesAI.WaveNumber));
	}
}






