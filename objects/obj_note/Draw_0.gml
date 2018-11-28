draw_self()

if global.READING_NOTE{
	visible = true
	
	//
	// Change note sprites depending on the game stage and item index
	//
	if global.GAME_STAGE == 1 and
	item_index == 0{
	}
	
	else if global.GAME_STAGE == 1 and
	item_index == 1{
		sprite_index = spr_note1
	}
}
else {
	visible = false
}