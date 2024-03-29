draw_self()

// Draw Guns
if (guns != -1)
	draw_sprite_ext(
		spr_ship_powerups_strip6,
		guns, x, y,
		image_xscale, image_yscale,
		image_angle, image_blend, image_alpha)

// Draw Invinciblity
if (invincible) {
	var alpha = min(1, alarm[1] / 60)
	draw_sprite_ext(
		spr_ship_powerups_strip6,
		POWERUPS.invincible, x, y,
		image_xscale, image_yscale,
		image_angle, image_blend, alpha)		
}