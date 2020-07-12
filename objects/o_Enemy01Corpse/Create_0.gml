//Mirror Image
if (o_Player.x<x)
image_xscale=1;
else
image_xscale=-1;

audio_play_sound(choose(s_SlimeDeath1,s_SlimeDeath2,s_SlimeDeath3),0,0);