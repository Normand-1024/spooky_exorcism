if global.GAME_STAGE == 3 and global.MIRROR and not already_appeared{
	if counter <= mirror_stay_time{
		x = mouse_x + camera_x_offset
		y = mouse_y + camera_y_offset
		counter += 1
	}
	else{
		already_appeared = true
	}
}
else{
	x = -200000
	y = -200000
}