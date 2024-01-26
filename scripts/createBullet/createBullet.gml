/// @function                spawnOffcameraY(dir, spd, fct);
/// @param {Real}            dir  The bullet direction
/// @param {Real}            spd  The bullet speed
/// @param {Real}            fac  The bullet faction
function createBullet(dir, spd, fac) {
	var inst = instance_create_layer(x, y, "Instances", obj_bullet)
	var who = id

	with (inst) {
		direction = dir
		speed = spd
		faction = fac
		creator = who
		if (faction == FACTIONS.ally) image_blend = c_aqua
		else if (faction == FACTIONS.enemy) image_blend = c_red
	}
	
	audio_play_sound(snd_zap, 1, false)
}