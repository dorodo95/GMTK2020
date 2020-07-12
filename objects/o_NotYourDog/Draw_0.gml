draw_self();
draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(c_white);
if (CloseEnough==true)
draw_text(x,y-20,string(ds_list_find_value(RandomTalk,0)));
