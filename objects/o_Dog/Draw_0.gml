draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(make_color_rgb(247,194,100));

//Collar
if (!(DogState=="Sitted"))
{
	draw_line_width(x,y,o_Player.x,o_Player.y+5,2);
}


draw_set_color(c_white);
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

if (PetTheDog==true && DogState=="Sitted" && CantInteractYet==false)
draw_text(x,y-20,"Press X to pet your lovely dog");



if (array_length_1d(o_WavesAI.SpawnNumberWave)<o_WavesAI.WaveNumber)
draw_text(x,y-20,"Sorry, there's just "+ string(o_WavesAI.WaveNumber) + " Waves Configured");