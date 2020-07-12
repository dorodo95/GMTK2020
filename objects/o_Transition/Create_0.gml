X1=0;
Y1=-500;
X2=X1+(256*3);
Y2=Y1+(144*3);

Acceleration=10;

CanKeepGoing=true;
OneTrigger=false;


RoomNumber=0;

if (instance_exists(o_Weapon))
part_particles_clear(o_Weapon.mySystem);