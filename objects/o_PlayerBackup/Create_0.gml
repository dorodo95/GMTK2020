WalkSpeedDragging=1;
WalkSpeed=2;
Direction=0;
DogSpeed=2;
AreaList=ds_list_create();


BulletSpeed=5;
BulletSpread=1;
FiringDelay=0;
FiringDelayValue=15;
DistanceForBulletSpawn=5;

SlipperySpeed=1;

for (var i = 0; i <= 7; i += 1)
{
	with (instance_create_layer(x,y,"Instances",o_Area))
	{
		AreaNumber=i;
		ds_list_add(other.AreaList,self);
	}
}

alarm[0]=20;


//Particle
mySystem=part_system_create();
myParticle=part_type_create();

part_type_sprite(myParticle,s_Dust,0,0,0);
part_type_life(myParticle,room_speed/4,room_speed/10);
part_type_size(myParticle,0.3,2,0,0);

part_type_direction(myParticle,0,180,0,0);
part_type_speed(myParticle,1,3,0,0);
