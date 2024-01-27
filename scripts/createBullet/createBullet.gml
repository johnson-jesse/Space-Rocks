/// @function       spawnOffcameraY(dir, spd, fct, pow*);
/// @param {Real}   dir The bullet direction
/// @param {Real}   spd The bullet speed
/// @param {Real}   fac The bullet faction
/// @param {Real}   typ (optional) bullet type
/// @description create bullet with option powerup type
function createBullet(dir, spd, fac, typ = -1) {
	var inst = undefined
	var sep = undefined
	var bulletAngle = undefined
	var i = undefined
	
	switch(typ) {
		case POWERUPS.three_bullets:
			inst = instance_create_layer(x, y, "Instances", obj_bullet)
			initializeBullet(dir, spd, fac, inst)
			/* break */
		case POWERUPS.two_bullets:
			audio_play_sound(snd_zap, 1, false)
			
			sep = 12
			
			inst = instance_create_layer(x + lengthdir_x(sep, dir + 90), y + lengthdir_y(sep, dir + 90), "Instances", obj_bullet)
			initializeBullet(dir, spd, fac, inst)
			
			inst = instance_create_layer(x + lengthdir_x(sep, dir - 90), y + lengthdir_y(sep, dir - 90), "Instances", obj_bullet)
			initializeBullet(dir, spd, fac, inst)
			break

		case POWERUPS.four_bullets:
			sep = 0; i = 0;
			repeat(4) {
				bulletAngle = dir  + (i * 90)
				inst = instance_create_layer(
					x + lengthdir_x(sep, bulletAngle),
					y + lengthdir_y(sep, bulletAngle),
					"Instances", obj_bullet
				);
				initializeBullet(bulletAngle, spd, fac, inst)
				i++
			}
			break
		case POWERUPS.star_bullets:
		sep = 0; i = 0;
			repeat(8) {
				bulletAngle = dir  + (i * 45)
				inst = instance_create_layer(
					x + lengthdir_x(sep, bulletAngle),
					y + lengthdir_y(sep, bulletAngle),
					"Instances", obj_bullet
				);
				initializeBullet(bulletAngle, spd, fac, inst)
				i++
			}
			break
		case POWERUPS.laser_bullet:
		
			break
		default:
			audio_play_sound(snd_zap, 1, false)
			inst = instance_create_layer(x, y, "Instances", obj_bullet)
			initializeBullet(dir, spd, fac, inst)
			break
	}
}