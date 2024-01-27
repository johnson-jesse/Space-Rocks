// Particles FX
	exhaustCounter++
	if (exhaustCounter >= 4) {
		exhaustCounter = 0
		var len = sprite_width * 0.4
		var xx = x - lengthdir_x(len, image_angle)
		var yy = y - lengthdir_y(len, image_angle)
		with(obj_particles) {
			part_particles_create(partSystem, xx, yy, partTypeEnemyExhaust, 1)	
		}
	}