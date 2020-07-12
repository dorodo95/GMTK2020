audio_play_sound(choose(s_MainBark1,s_MainBark2,s_MainBark3,s_MainBark4,s_MainBark5,s_MainBark6,s_MainBark7,s_MainBark8),0,0);
sprite_index=s_DogRunning;
DogState="Walking"
FoundArea=false;
ForcePositionTest=false;
FindAnotherPosition=false;
o_Area.image_index=0;

if (AreaToFollow!=0)
{
	while(AreaToFollow.AreaNumber==DogAreaDirection)
	{
		DogAreaDirection=irandom_range(0,7);
	}
}
