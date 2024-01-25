/// @description Insert description here
if (room != rm_game) exit

var xx, yy

if (choose(0,1) == 0) {
	// down the sides
	xx = choose(0, room_width)
	yy = irandom_range(0, room_height)
}

else {
	// top or bottom	
	xx = irandom_range(0, room_width)
	yy = choose(0, room_height)
}

instance_create_layer(xx, yy, "Instances", obj_asteroid)

alarm[0] = game_get_speed(gamespeed_fps)