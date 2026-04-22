if (global.time > 2 *global.spawn_time / 3)
{
	draw_text_transformed_color(x, y, global.time / 100, 3, 3, 0, c_green, c_green, c_green, c_green, 1);
}
else if (global.time > global.spawn_time / 3)
{
	draw_text_transformed_color(x, y, global.time / 100, 3, 3, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
}
else
{
	draw_text_transformed_color(x, y, global.time / 100, 3, 3, 0, c_red, c_red, c_red, c_red, 1);
}