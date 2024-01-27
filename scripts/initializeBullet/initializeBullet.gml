/// @function                initializeBullet(dir, spd, fct);
/// @param {Real}            dir The bullet direction
/// @param {Real}            spd The bullet speed
/// @param {Real}            fac The bullet faction
/// @param {ID.Instance}     ins The bullet instance
/// @description	         setup default values
function initializeBullet(dir, spd, fac, ins) {
	var who = id

	with (ins) {
		direction = dir
		speed = spd
		faction = fac
		creator = who
		if (faction == FACTIONS.ally) image_blend = c_aqua
		else if (faction == FACTIONS.enemy) image_blend = c_red
	}
}