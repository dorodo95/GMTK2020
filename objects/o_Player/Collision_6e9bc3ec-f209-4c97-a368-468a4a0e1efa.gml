instance_destroy(other);
o_Enemy01.PlayerReceivedDamage=true;
instance_create_layer(o_Player.x,o_Player.y,"UI",o_DamageExplosion);

audio_play_sound(choose(s_MainDamage1,s_MainDamage2,s_MainDamage3),0,0);
HP--;