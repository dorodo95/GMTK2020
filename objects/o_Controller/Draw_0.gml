draw_set_font(f_PixelNarrative);
//Debug
if (global.DebugOn==true)
{
	draw_text(camera_get_view_x(view)+5,camera_get_view_y(view)+20,"DEBUG ON");
}

if (instance_exists(o_WavesAI))
draw_text(camera_get_view_x(view)+5,camera_get_view_y(view)+5,"WAVE: " + string(o_WavesAI.WaveNumber));
draw_text(camera_get_view_x(view)+5,camera_get_view_y(view)+40,"Enemies Alive: " + string(instance_number(o_Enemy01)));





