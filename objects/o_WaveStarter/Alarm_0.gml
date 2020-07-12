Text1Appear=true;

alarm[1]=TimeForAlarm1;

o_Dog.DogState="PetTheDogHappening";


audio_play_sound(s_HeartsSound,0,0);
if(o_Player.HP<3)
o_Player.HP++;