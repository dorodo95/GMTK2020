draw_sprite_ext(s_BarHP,0,HolderX,HolderY,3,3,0,c_white,1);

if (o_Player.HP==3)
{
	draw_sprite_ext(s_Heart,0,HolderX-6,HolderY-35,3,3,0,c_white,1);
	draw_sprite_ext(s_Heart,0,HolderX+36,HolderY-35,3,3,0,c_white,1);
	draw_sprite_ext(s_Heart,0,HolderX+78,HolderY-35,3,3,0,c_white,1);

}
else if (o_Player.HP==2)
{
	draw_sprite_ext(s_Heart,0,HolderX-6,HolderY-35,3,3,0,c_white,1);
	draw_sprite_ext(s_Heart,0,HolderX+36,HolderY-35,3,3,0,c_white,1);
}
else if (o_Player.HP==1)
{
	draw_sprite_ext(s_Heart,0,HolderX-6,HolderY-35,3,3,0,c_white,1);
}