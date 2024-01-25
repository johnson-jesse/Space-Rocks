/// @description Insert description here
instance_destroy()

with(other) {
	instance_destroy()
	
	if (sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var _new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
			_new_asteroid.sprite_index = spr_asteroid_med
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat(2) {
			var _new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid)
			_new_asteroid.sprite_index = spr_asteroid_small
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris)
	}
	
	score += 10
}
