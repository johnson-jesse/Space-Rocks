/// @description Spawn 6 Asteroids
if (room == rm_game) {
	spawnOffCamera(obj_asteroid, 6)
	spawnOffCamera(obj_raider, 18)
	//spawnOffCamera(obj_hunter, 5)
	//spawnOffCamera(obj_brute, 3)
	
	//if (audio_is_playing(msc_song)) {
	//	audio_stop_sound(msc_song)	
	//}

	//audio_play_sound(msc_song, 2, true)
	
	alarm[0] = TIME
}
