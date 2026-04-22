if (active)
{
	global.current_player = obj_player2;
	if (global.music == true)
	{
		audio_stop_sound(Song1);
		audio_play_sound(Song2, 0, true);
	}
	room_goto(Room2);
}