if (instance_exists(o_Controller))
{
	if (global.DebugOn==true)
	visible=true;
	else
	visible=false;
	
}

if (ChangeWave==true)
{
	WaveNumber++;
	ChangeWave=false;
}


if (WaveNumber>0 && array_length_1d(SpawnNumberWave)>=WaveNumber )
{
	if (SpawnNumberWave[WaveNumber-1]<=0 && alarm[0]<=0)
	{
		WaveFinished=true;
	}
	else if (alarm[0]<=0 && SpawnNumberWave[WaveNumber-1]>0)
	{
		WaveFinished=false;
		alarm[0]=SpawnCadenceWave[WaveNumber-1];
		SpawnNumberWave[WaveNumber-1]--;
	}
}

