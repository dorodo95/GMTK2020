DogState="Walking"
FoundArea=false;
var AreaAlarm=instance_position( x, y, o_Area);

while(AreaAlarm.AreaNumber==DogDirection)
{
	DogDirection=irandom_range(0,7);
}

