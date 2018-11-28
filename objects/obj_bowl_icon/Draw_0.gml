draw_self()

if 	abs(mouse_x - x) < sprite_width * 0.75 / 2 and
	abs(mouse_y - y) < sprite_height * 0.75 / 2{
	
	image_index = 1
	
}
else{
	image_index = 0
}

if global.BOWL = true{
	if global.BOWL_TIMER >= global.BOWL_MAX_TIME - 5 {
		image_index = 2
	}
}