if (distance_to_object(obj_player2) <= 0)
{
	if(global.my_struct_1.count == 4)
	{
		global.my_struct_1.count = 0;
		global.my_struct_4.count += 1
	}
	else
	{
		global.my_struct_1.count += 1;
	}
}