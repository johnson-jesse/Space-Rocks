function createDebris(){
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris)
	}
}