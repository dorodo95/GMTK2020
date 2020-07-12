draw_set_font(f_PixelNarrative);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_self();
draw_text(x+20,y-23,"Move");
draw_text(x+8,y-10,"Volume");
draw_text(x+8,y+3,"Interaction");

if (distance_to_object(o_Player)>400)
{
	instance_destroy();
}