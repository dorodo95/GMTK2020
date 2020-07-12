alarm[3]=3;
isHit=true;

if (!audio_is_playing(s_MainDamage1))
audio_play_sound(choose(s_MainDamage1),0,0);
global.ShotTheDog++;
instance_destroy(other);

