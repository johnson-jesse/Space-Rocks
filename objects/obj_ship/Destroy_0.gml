/// @description
lives -= 1
global.cameraShake = 5

with(obj_game) {
	alarm[1] = 2 * game_get_speed(gamespeed_fps)	
}

audio_play_sound(snd_die, 1, false)

var xx = x, yy = y, ib = image_blend
with(obj_particles) {
	part_particles_create_color(partSystem, xx, yy, partTypeShipDebris, ib, 10)	
}