if (global.music == true)
{
	global.music = false;
	audio_stop_all();
}
else
{
	global.music = true;
	audio_play_sound(Song3, 0, true);
}