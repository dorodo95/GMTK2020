image_speed=0;

//ParticleDust
mySystem=part_system_create();
myParticle=part_type_create();


part_type_sprite(myParticle,s_BulletDust,0,0,0);
part_type_life(myParticle,900000,999999);
part_type_size(myParticle,0.5,0.7,0,0);

part_type_orientation(myParticle,0,360,0,0,0);


part_type_direction(myParticle,0,270,0,0);
part_type_speed(myParticle,1,2,-0.1,0);

part_system_depth(myParticle,401);