/// @description Insert description here
instance_destroy()
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris)
}
lives -= 1