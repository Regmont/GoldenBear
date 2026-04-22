if(instance_exists(obj_main_priority))
{
	phy_position_x += sign(obj_main_priority.x -x) * enemy_speed;
	phy_position_y += sign(obj_main_priority.y -y) * enemy_speed;
}

phy_fixed_rotation = true;

if (hp <= 0)
{
	instance_destroy();	
}

if (instance_number(obj_default_enemy) >= global.count_enemy * 4)
{
	global.time = global.spawn_time;
	global.count_enemy += 3;
}