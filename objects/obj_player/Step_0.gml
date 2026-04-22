PlayerInput1();

if (_right_move && x <= 2300)
{
	x += player_speed;
}
if (_left_move && x >= 800)
{
	x -= player_speed;
}
if (_up_move && y >= 500)
{
	y -= player_speed;
}
if (_down_move && y <= 2500)
{
	y += player_speed;
}

if (global.my_struct_0.count > 0)
{
	if (mouse_check_button_pressed(mb_left))
	{
		if (!instance_position(mouse_x, mouse_y, all))
		{
			var mx = mouse_x - mouse_x % 32;
			var my = mouse_y - mouse_y % 32;
		
			global.current_obj = get_lego();
			instance_create_depth(mx, my, 1, global.current_obj);
			global.my_struct_0.count -= 1;
		}
	}
}

if (global.my_struct_4.count > 0)
{
	if (mouse_check_button_pressed(mb_middle))
	{
		if (!instance_position(mouse_x, mouse_y, global.current_obj_gum))
		{
			var mx = mouse_x - mouse_x % 32;
			var my = mouse_y - mouse_y % 32;
		
			if (!collision_rectangle(mx, my, mx + 32, my + 32, obj_player, false, false))
			{
				instance_create_depth(mx, my, 1, global.current_obj_gum);
			}
			global.my_struct_4.count -= 1;
		}
	}
}

if (global.my_struct_3.count > 0)
{
	if (mouse_check_button_pressed(mb_right))
	{
		if (!instance_position(mouse_x, mouse_y, global.current_obj_soldier))
		{
			var mx = mouse_x - mouse_x % 32;
			var my = mouse_y - mouse_y % 32;
		
			if (!collision_rectangle(mx, my, mx + 32, my + 32, obj_player, false, false))
			{
				instance_create_depth(mx, my, 1, global.current_obj_soldier);
			}
			global.my_struct_3.count -= 1;
		}
	}
}

if (!instance_exists(obj_default_enemy))
{
	global.time--;
}

if (instance_exists(obj_default_enemy))
{
	active = false;
}
else
{
	active = true;
}