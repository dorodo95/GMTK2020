draw_self();
draw_set_font(f_PixelNarrative);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x+130,y+90,"Your Last Wave: "+ string(global.LastWave));
draw_text(x+130,y+100,"Number of times you shot your dog: "+ string(global.ShotTheDog));
draw_text(x+130,y+110,"Number of Slimes Defeated: " + string(global.SlimesKilled));
draw_text(x+130,y+120,"Number of times you pressed Ctrl key: "+string(global.CtrlKey));




draw_sprite(s_Dog,0,DogPositionX,DogPositionY);


