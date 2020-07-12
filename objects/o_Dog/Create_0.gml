//DogDirection=600 == Stopped/NoForce
DogDirection=600;
DogAreaDirection=irandom_range(0,7);

//There are 3 states: Walking, Dragging and Sitted
DogState="Sitted";






FoundArea=false;

AreaToFollow=0;

WalkingSpeed=2.7;
DogSpeedDraggingForce=WalkingSpeed;


DogSpeedDraggingForceCalculated=DogSpeedDraggingForce-o_Player.WalkSpeedDragging


ForcePositionTest=false;
GetAwayFromWall=false;

FindAnotherPosition=false;

DinstanceToPet=30;

PetTheDog=false;


BulletsDogReceived=0;

TimeToChangePosition=400;



//HeartParticle
mySystem=part_system_create();
myParticle=part_type_create();

part_type_sprite(myParticle,s_Hearts,0,0,0);
part_type_life(myParticle,5,20);
part_type_size(myParticle,0.1,1,0,0);

part_type_direction(myParticle,0,180,0,0);
part_type_speed(myParticle,0.1,0.3,0,0);

RangeToSpawnParticle=20;



