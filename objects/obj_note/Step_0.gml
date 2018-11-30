if global.READING_NOTE{
	visible = true
	//
	// Handle intro transition
	//
	if current_timer <= transition_time{
		if current_timer <= invisible_time{
			image_alpha = 0
		}
		else{
			image_alpha = (current_timer - invisible_time) / (transition_time - invisible_time)
		}
		
		current_timer += 1
	}
	else{
		if mouse_check_button_pressed(mb_left){
			global.GAME_STAGE += 1
			global.READING_NOTE = false
			current_timer = 0
		}
	}
}