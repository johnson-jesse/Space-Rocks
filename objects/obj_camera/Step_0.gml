/// @description Follow Target
if (instance_exists(target)) {
	global.cameraX = target.x - (global.cameraWidth / 2)
	global.cameraY = target.y - (global.cameraHeight / 2)
	
	global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth)
	global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight)
}

// Camera Position
camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY)

// Camera Shake
global.cameraX += random_range(-global.cameraShake, global.cameraShake)
global.cameraY += random_range(-global.cameraShake, global.cameraShake)

if (global.cameraShake > 0) {
	global.cameraShake -= 0.2
	if (global.cameraShake < 0) global.cameraShake = 0
}

// Parallex
layer_x("Parallax_0", global.cameraX * 0.98)
layer_y("Parallax_0", global.cameraY * 0.98)

layer_x("Parallax_1", global.cameraX * 0.92)
layer_y("Parallax_1", global.cameraY * 0.92)

layer_x("Parallax_2", global.cameraX * 0.9)
layer_y("Parallax_2", global.cameraY * 0.9)

layer_x("Parallax_3", global.cameraX * 0.88)
layer_y("Parallax_3", global.cameraY * 0.88)