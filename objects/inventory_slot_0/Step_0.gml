if(instance_exists(global.current_player))
{
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - 128;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 1.1;
}