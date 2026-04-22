global.current_player = obj_player;
instance_activate_object(obj_soldier);
if (global.music == true)
{
	audio_stop_sound(Song2);
	audio_play_sound(Song1, 0, true);
}
room_goto(Room1);