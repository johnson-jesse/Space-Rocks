/// @description Navigation
if (keyboard_check(vk_left)) {
	image_angle += 3.5	
}

if (keyboard_check(vk_right)) {
	image_angle -= 3.5	
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05)
	
	// Particles FX
	exhaustCounter++
	if (exhaustCounter >= 4) {
		exhaustCounter = 0
		var len = sprite_width * 0.4
		var xx = x - lengthdir_x(len, image_angle)
		var yy = y - lengthdir_y(len, image_angle)
		with(obj_particles) {
			part_particles_create(partSystem, xx, yy, partTypeExhaust, 1)	
		}
	}
}

if (keyboard_check_pressed(vk_space)) {
	createBullet(image_angle, bulletSpd, faction, guns)
}

move_wrap(true, true, sprite_width / 2)

if (keyboard_check_pressed(ord("R"))) {
	room_restart()
}