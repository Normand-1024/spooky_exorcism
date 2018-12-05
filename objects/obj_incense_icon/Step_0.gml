/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and
	abs(mouse_x - x) < sprite_width * 0.75 / 2 and
	abs(mouse_y - y) < sprite_height * 0.75 / 2{
	
	global.INCENSE_DRAGGED = true
}

if mouse_check_button(mb_left) and
	global.INCENSE_DRAGGED{
	
	x = mouse_x + sprite_width / 2
	y = mouse_y + sprite_width / 2
}
else if global.INCENSE_DRAGGED{
	global.INCENSE_DRAGGED = false
	cursor_sprite = spr_cursor
	
	instance_create_depth(mouse_x, mouse_y, 201, obj_incense)
}
else{
	x = original_x
	y = original_y
}