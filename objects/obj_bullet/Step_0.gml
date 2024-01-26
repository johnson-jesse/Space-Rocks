/// @description Dispose
if (!point_in_rectangle(
	x, y,
	global.cameraX,
	global.cameraY,
	global.cameraX + global.cameraWidth,
	global.cameraY + global.cameraY
)) {
	instance_destroy()
}