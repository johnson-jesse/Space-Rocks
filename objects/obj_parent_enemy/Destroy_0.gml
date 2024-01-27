audio_play_sound(snd_die, 1, false)
createDebris()

switch(object_index) {
	case obj_raider: score += 15; global.cameraShake = 3; break;
	case obj_hunter: score += 30; global.cameraShake = 3; break;
	case obj_brute: score += 50; global.cameraShake = 4; break;
}

if (irandom_range(0, 2) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup)
}