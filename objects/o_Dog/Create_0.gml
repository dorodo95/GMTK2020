//DogPosition="None";
DogDirection=0;

//There are 3 states: Walking, Dragging and Sitted
DogState="Walking";

FoundArea=false;

AreaToFollow=0;

WalkingSpeed=10;


DogPosition=ds_list_create()
ds_list_add(DogPosition,"TopLeft","Top","TopRight","Right","BottomRight","Bottom","BottomLeft","Left");

PositionNow="None";
ds_list_shuffle(DogPosition);
//alarm[0]=100;