function PlayerInput2()
{
	_right_move = (keyboard_check(vk_right) || keyboard_check(ord("D")));
	_left_move = (keyboard_check(vk_left) || keyboard_check(ord("A")));
	_jump = keyboard_check(vk_space);
}