//DogDirection=600 == Stopped/NoForce
DogDirection=600;
DogAreaDirection=irandom_range(0,7);

//There are 3 states: Walking, Dragging and Sitted
DogState="Sitted";

FoundArea=false;

AreaToFollow=0;

WalkingSpeed=2;
DogSpeedDraggingForce=WalkingSpeed;


DogSpeedDraggingForceCalculated=DogSpeedDraggingForce-o_Player.WalkSpeedDragging


ForcePositionTest=false;
GetAwayFromWall=false;

FindAnotherPosition=false;

DinstanceToPet=30;

PetTheDog=false;


BulletsDogReceived=0;

TimeToChangePosition=400;


