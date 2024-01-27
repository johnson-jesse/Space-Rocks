/// @description INIT
score = 0
lives = 3

draw_set_font(fnt_text)

randomize()

enum FACTIONS {
	neutral,
	ally,
	enemy
}

enum POWERUPS {
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser_bullet,
	invincible
}