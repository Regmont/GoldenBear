
if (distance_to_object(obj_player2) <= 0)
{
	if(global.my_struct_2.count == 9)
	{
		global.my_struct_2.count = 0;
		global.my_struct_3.count += 1;
	}
	else
	{
		global.my_struct_2.count += 1;
	}
}