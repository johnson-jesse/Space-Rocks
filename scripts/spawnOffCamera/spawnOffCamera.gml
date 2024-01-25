/// @function                spawnOffglobal.cameraY(obj, num);
/// @param {Asset.GMObject}  obj  The object to spawn
/// @param {Real}            num  Number of objects to spawn

function spawnOffCamera(obj, num) {
	var xx,yy
	var pad = 64
	
	repeat(num) {
		xx = random_range(0 , room_width)
		yy = random_range(0, room_height)
	
		while(point_in_rectangle(
			xx, yy,
			global.cameraX - pad,
			global.cameraY - pad,
			global.cameraX + global.cameraWidth + pad,
			global.cameraY + global.cameraHeight + pad
		)) {
			xx = random_range(0 , room_width)
			yy = random_range(0, room_height)
		}
	
		instance_create_layer(xx, yy, "Instances", obj)
	}
}