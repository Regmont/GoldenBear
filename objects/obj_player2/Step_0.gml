  PlayerInput2();

if (_right_move)
{
	phy_position_x += player_speed;
}
if (_left_move)
{
	phy_position_x -= player_speed;
}
phy_position_x = round(phy_position_x);
phy_position_y = round(phy_position_y);

if (place_meeting(x, y + 2, obj_wardrobe) || place_meeting(x, y + 2, obj_wardrobe_2) || place_meeting(x, y + 2, obj_wardrobe_3) || place_meeting(x, y + 2, obj_platform))
{
	time = 0;
	
	if (_jump)
	{
		in_jump = true;
	}
	else
	{
		in_jump = false;
	}
}
if (in_jump)
{
	init_speed = 10;
}
else
{
	init_speed = 0;
}
if (in_jump)
{
	if (place_meeting(x, y - 1, obj_wardrobe) || place_meeting(x, y - 1, obj_wardrobe_2) || place_meeting(x, y - 1, obj_wardrobe_3) || place_meeting(x, y - 1, obj_platform))
	{
		time += 0.5;
	}
}
phy_position_y += -init_speed + global.grav * time;
time += 0.1;

if (mouse_check_button_pressed(mb_left))
{
	if (!instance_position(mouse_x, mouse_y, all))
	{
		var mx = mouse_x - mouse_x % 32;
		var my = mouse_y - mouse_y % 32;
		
		instance_create_depth(mx, my, 1, obj_platform);
	}
}
if (instance_position(mouse_x, mouse_y, obj_platform) && mouse_check_button_pressed(mb_right))
{
	var mx = mouse_x - 16;
	var my = mouse_y - 16;
	var select = instance_nearest(mx, my, obj_platform);
    instance_destroy(select);
}

global.time--;

if (global.time <= 0)
{
	global.current_player = obj_player;
	instance_activate_object(obj_soldier);
	if (global.music == true)
	{
		audio_stop_sound(Song2);
		audio_play_sound(Song1, 0, true);
	}
	room_goto(Room1);
}

instance_deactivate_object(obj_soldier);