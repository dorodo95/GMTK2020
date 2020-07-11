WalkSpeed=1.2;
Direction=0;
DogSpeed=0.5;
AreaList=ds_list_create();

AreaListTest=0;


BulletSpeed=5;
BulletSpread=1;
FiringDelay=0;
FiringDelayValue=15;
DistanceForBulletSpawn=10;

for (var i = 0; i <= 7; i += 1)
{
	with (instance_create_layer(x,y,"Instances",o_Area))
	{
		AreaNumber=i;
		ds_list_add(other.AreaList,self);
	}
}

alarm[0]=20;