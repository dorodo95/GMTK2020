draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(c_white);


//Collar
if (!(DogState=="Sitted"))
{
	draw_line_width(x,y,o_Player.x,o_Player.y,2);
}

draw_self();

if (instance_exists(o_Controller))
{
	if (global.DebugOn==true)
	draw_text(x,y-20,string(DogState));
	
}

if (PetTheDog==true && DogState=="Sitted")
draw_text(x,y-20,"Left Click to Start the Wave");



if (array_length_1d(o_WavesAI.SpawnNumberWave)<o_WavesAI.WaveNumber)
draw_text(x,y-20,"Sorry, there's just "+ string(o_WavesAI.WaveNumber) + " Waves Configured");