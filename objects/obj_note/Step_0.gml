if global.READING_NOTE{

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
			if global.GAME_STAGE == 1 and
				item_index == 0{
					
				item_index += 1
				current_timer = 0
			}
			else if global.GAME_STAGE == 1 and
				item_index == 1{
			
				global.GAME_STAGE += 1
				global.READING_NOTE = false
				item_index = 0
				current_timer = 0
			}
		}
	}
}