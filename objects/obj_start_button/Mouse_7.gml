if (global.music == true)
{
	audio_stop_sound(Song3);
	audio_play_sound(Song1, 0, true);
}
room_goto(Room1);