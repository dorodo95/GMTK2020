o_Enemy01.PlayerReceivedDamage=true;
instance_destroy(other);
instance_create_layer(o_Player.x,o_Player.y,"UI",o_DamageExplosion);
audio_play_sound(choose(s_Damage01),0,0);
HP--;
GotHitCheckHearts=true;

