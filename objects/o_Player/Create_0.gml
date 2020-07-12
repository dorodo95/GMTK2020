WalkSpeedDragging=1.5;
WalkSpeed=1.5;
Direction=0;
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

mySystem=part_system_create();
myParticle=part_type_create();

part_type_sprite(myParticle,s_Dust,0,0,0);
part_type_life(myParticle,5,20);
part_type_size(myParticle,0.1,1,0,0);

part_type_direction(myParticle,0,180,0,0);
part_type_speed(myParticle,0.1,0.3,0,0);

part_system_depth(myParticle,201);






MoveX=0;
MoveY=0;

HP=3;