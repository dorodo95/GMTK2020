if (instance_exists(o_Controller))
{
	if (global.DebugOn==true)
	visible=true;
	else
	visible=false;
	
}



if (WaveNumber==1)
{
	if (alarm[0]<=0 && SpawnNumberWave1>=0)
	{
		alarm[0]=SpawnCadenceWave1;
		SpawnNumberWave1--;
	}
	else if (SpawnNumberWave1<=0)
	{
		WaveNumber=2;
	}
}

