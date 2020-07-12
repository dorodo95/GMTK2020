draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x,y,"Find your Dog!");

if (distance_to_object(o_Player)>400)
{
	instance_destroy();
}