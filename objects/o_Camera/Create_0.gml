/// @description
view_width=256;
view_height=144;

window_scale=3;

window_set_size(view_width*window_scale,view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width*window_scale,view_height*window_scale);

CameraLerpSpeed=0.1;