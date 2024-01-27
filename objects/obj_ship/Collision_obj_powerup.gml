var powerType = undefined

with(other) {
	powerType = image_index
	instance_destroy()
}

switch(powerType) {
	case POWERUPS.invincible:
		invincible = true
		alarm[1] = 8 * TIME
		break
	default:
		guns = powerType
		alarm[0] = 5 * TIME
		break;
}