if(instance_exists(obj_default_enemy))
{
	phy_position_x += sign(instance_nearest(x,y,obj_default_enemy).x -x) * speed_soldier;
	phy_position_y += sign(instance_nearest(x,y,obj_default_enemy).y -y) * speed_soldier;
}
phy_rotation = true;
time_live--;
if(time_live <= 0)
{
	instance_destroy();
}

