draw_self()

if global.READING_NOTE{
	visible = true
	
	//
	// Change note sprites depending on the game stage and item index
	//
	if global.GAME_STAGE == 1{
		sprite_index = spr_note1
	}
	else if global.GAME_STAGE == 2{
		sprite_index = spr_note2
	}
	else if global.GAME_STAGE == 3{
		sprite_index = spr_note21
	}
}
else {
	visible = false
}