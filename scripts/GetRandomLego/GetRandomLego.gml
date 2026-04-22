function get_lego()
{
	temp = round(random_range(-1, 6));
	switch (temp)
	{
		case 0: return obj_lego_blue;
		case 1: return obj_lego_brown;
		case 2: return obj_lego_green;
		case 3: return obj_lego_orange;
		case 4: return obj_lego_purple;
		case 5: return obj_lego_red;
		case 6: return obj_lego_yellow;
		default: return obj_lego_blue;
	}
}