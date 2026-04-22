function PlayerInput1()
{
	_right_move = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	_left_move = (keyboard_check(vk_left) || keyboard_check(ord("A")));
	_up_move = (keyboard_check(vk_up) || keyboard_check(ord("W")));
	_down_move = (keyboard_check(vk_down) || keyboard_check(ord("S")));
}