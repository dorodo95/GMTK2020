draw_sprite_ext(s_BarHP,0,580,40,3,3,0,c_white,1);

if (o_Player.HP==3)
{
	draw_sprite_ext(s_Heart,0,574,5,3,3,0,c_white,1);
	draw_sprite_ext(s_Heart,0,616,5,3,3,0,c_white,1);
	draw_sprite_ext(s_Heart,0,658,5,3,3,0,c_white,1);

}
else if (o_Player.HP==2)
{
	draw_sprite_ext(s_Heart,0,574,5,3,3,0,c_white,1);
	draw_sprite_ext(s_Heart,0,616,5,3,3,0,c_white,1);
}
else if (o_Player.HP==1)
{
	draw_sprite_ext(s_Heart,0,574,5,3,3,0,c_white,1);
}