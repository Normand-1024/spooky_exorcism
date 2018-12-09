if mouse_check_button_pressed(mb_left) and
	abs(mouse_x - x) < sprite_width * 0.75 / 2 and
	abs(mouse_y - y) < sprite_height * 0.75 / 2{
	global.BOWL = !global.BOWL
}