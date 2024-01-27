event_inherited()

image_index = hp - 1

if (!instance_exists(obj_ship)) exit

if (point_distance(x, y, obj_ship.x, obj_ship.y) < 250) {
	// turn to look at the player
	var newAngle = point_direction(x, y, obj_ship.x, obj_ship.y)
	newAngle = image_angle - angle_difference(image_angle, newAngle)
	image_angle = lerp(image_angle, newAngle, 0.1);
	direction = image_angle
	speed += 0.01
}

else {
	speed = lerp(originalSpeed, 2, 0.1)
}