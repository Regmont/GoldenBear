if (_right_move)
{
	draw_sprite_ext(Sprite_player_rev, image_index, x, y, 2, 2, 0, c_white, 1);
}
else if (_left_move)
{
	draw_sprite_ext(Sprite_player, image_index, x, y, 2, 2, 0, c_white, 1);
}
else
{
	draw_sprite_ext(Sprite_player, 0, x, y, 2, 2, 0, c_white, 1);
}