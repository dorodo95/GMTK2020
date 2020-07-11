draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(c_white);


if (Text1Appear==true)
{
	draw_text(camera_get_view_x(view)+camera_get_view_width(view)/2,camera_get_view_y(view)+camera_get_view_height(view)/5,string(Text1));
}

if (Text2Appear==true)
{
	draw_text(camera_get_view_x(view)+camera_get_view_width(view)/2,camera_get_view_y(view)+camera_get_view_height(view)/5,string(Text2));
}

if (Text3Appear==true)
{
	draw_text(camera_get_view_x(view)+camera_get_view_width(view)/2,camera_get_view_y(view)+camera_get_view_height(view)/5,string(Text3));
}

if (Text4Appear==true)
{
	draw_text(camera_get_view_x(view)+camera_get_view_width(view)/2,camera_get_view_y(view)+camera_get_view_height(view)/5,string(Text4));
}

if (Text5Appear==true)
{
	draw_text(camera_get_view_x(view)+camera_get_view_width(view)/2,camera_get_view_y(view)+camera_get_view_height(view)/5,string(Text5));
}