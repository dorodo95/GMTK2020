#macro view view_camera[0]
#macro viewX  camera_get_view_x(view)
#macro viewY  camera_get_view_y(view)

camera_set_view_size(view,view_width,view_height);

if (instance_exists(o_Player))
{
	if (ScreenShakeOn==false)
	{
		var _x = clamp(o_Player.x-view_width/2,0,room_width-view_width);
		var _y = clamp(o_Player.y-view_height/2,0,room_height-view_height);
		camera_set_view_pos(view,_x,_y);
	
		var _cur_x = camera_get_view_x(view);
		var _cur_y = camera_get_view_y(view);
	
		var _speed = CameraLerpSpeed;
		camera_set_view_pos(view,lerp(_cur_x,_x,_speed),lerp(_cur_y,_y,_speed));
	}
	else
	{
		if (alarm[1]<=0)
		alarm[1]=ScreenShakeTime;
		
		
		var _x = clamp((o_Player.x-view_width/2),0,room_width-view_width);
		var _y = clamp((o_Player.y-view_height/2),0,room_height-view_height);
		camera_set_view_pos(view,_x,_y);
	
		var _cur_x = camera_get_view_x(view);
		var _cur_y = camera_get_view_y(view);
	
		var _speed = CameraLerpSpeed;
		camera_set_view_pos(view,lerp(_cur_x,_x,_speed)+random_range(-ShakeStrongness,ShakeStrongness),lerp(_cur_y,_y,_speed)+random_range(-ShakeStrongness,ShakeStrongness));
	}
}

