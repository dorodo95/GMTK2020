

InstanceChoose = instance_find(o_EnemySpawner, irandom(instance_number(o_EnemySpawner) - 1));
DistanceBetweenPlayerAndSpawner = point_distance(InstanceChoose.x,InstanceChoose.y,o_Player.x,o_Player.y);




while (DistanceBetweenPlayerAndSpawner<=200)
{
	InstanceChoose = instance_find(o_EnemySpawner, irandom(instance_number(o_EnemySpawner) - 1));
	DistanceBetweenPlayerAndSpawner = point_distance(InstanceChoose.x,InstanceChoose.y,o_Player.x,o_Player.y);
}


with(instance_create_layer(InstanceChoose.x,InstanceChoose.y,"Instances",o_Enemy01))
{
	Speed=other.EnemySpeed[other.WaveNumber-1];
}

