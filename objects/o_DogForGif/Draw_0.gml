draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(c_white);

//Collar
if (!(DogState=="Sitted"))
{
	draw_line_width(x,y,o_Player.x+5,o_Player.y+5,2);
}

if (!isHit)
draw_self();

else
{
	gpu_set_fog(true, c_white, 0, 0);
	draw_self();
	gpu_set_fog(false, c_white, 0, 0);
}

if (instance_exists(o_Controller))
{
	if (global.DebugOn==true)
	draw_text(x,y-20,string(DogState));
	
}




if (array_length_1d(o_WavesAI.SpawnNumberWave)<o_WavesAI.WaveNumber)
draw_text(x,y-20,"Sorry, there's just "+ string(o_WavesAI.WaveNumber) + " Waves Configured");