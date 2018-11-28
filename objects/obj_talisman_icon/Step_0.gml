if mouse_check_button_pressed(mb_left) and
	abs(mouse_x - x) < sprite_width * 0.75 / 2 and
	abs(mouse_y - y) < sprite_height * 0.75 / 2{
	
	global.TALISMAN_DRAGGED = true
}

if mouse_check_button(mb_left) and
	global.TALISMAN_DRAGGED{
	
	x = mouse_x + sprite_width / 2
	y = mouse_y + sprite_width / 2
}
else if global.TALISMAN_DRAGGED{
	global.TALISMAN_DRAGGED = false
	cursor_sprite = spr_cursor
	
	instance_create_depth(mouse_x, mouse_y, 101, obj_talisman_yellow)
	
}
else{
	x = original_x
	y = original_y
}