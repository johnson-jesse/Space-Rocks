/// @description Bullet Collision Hit
instance_destroy()
audio_play_sound(snd_die, 1, false)
	
if (sprite_index == spr_asteroid_huge) {
	repeat(2) {
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
		newAsteroid.sprite_index = spr_asteroid_med
	}
} else if (sprite_index == spr_asteroid_med) {
	repeat(2) {
		var newAsteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
		newAsteroid.sprite_index = spr_asteroid_small
	}
}
	
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris)
}
	
score += 10









