if (mouse_check_button(mb_left))
{
	draw_sprite(Sprite_start_button, 1, x, y);
}
else
{
	if (index < 20)
	{
		draw_sprite(Sprite_start_button, 0, x, y);
	}
	else if (index < 40)
	{
		draw_sprite(Sprite_start_button, 1, x, y);
	}
	
	index++;
	
	if (index == 40)
	{
		index = 0;
	}
}