draw_self();
draw_set_font(f_PixelNarrative);
if (instance_exists(o_Controller))
{
	if (global.DebugOn==true)
	draw_text(x-20,y-20,string(DogState));
	
}

if (PetTheDog==true && DogState=="Sitted")
draw_text(x-70,y-20,"Left Click to Start the Wave");


if (array_length_1d(o_WavesAI.SpawnNumberWave)<o_WavesAI.WaveNumber)
draw_text(x-100,y-20,"Sorry, there's just "+ string(o_WavesAI.WaveNumber) + " Waves Configured");