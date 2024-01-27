if (irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup)
}

audio_play_sound(snd_die, 1, false)
	
if (sprite_index == spr_asteroid_huge) {
	global.cameraShake = 4
	repeat(2) {
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
		newAsteroid.sprite_index = spr_asteroid_med
	}
} else if (sprite_index == spr_asteroid_med) {
	global.cameraShake = 3
	repeat(2) {
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
		newAsteroid.sprite_index = spr_asteroid_small
	}
} else {
	global.cameraShake = 2
}
	
createDebris()
	
score += 10