audio_play_sound(snd_die, 1, false)

var xx = x, yy = y, ib = image_blend
with(obj_particles) {
	part_particles_create_color(partSystem, xx, yy, partTypeShipDebris, ib, 10)	
}

switch(object_index) {
	case obj_raider: score += 15; global.cameraShake = 3; break;
	case obj_hunter: score += 30; global.cameraShake = 3; break;
	case obj_brute: score += 50; global.cameraShake = 4; break;
}

if (irandom_range(0, 2) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup)
}