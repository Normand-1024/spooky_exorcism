/// @description Insert description here
// You can write your code in this editor
if global.INCENSE_APPEAR{
	draw_self()
}

if 	abs(mouse_x - x) < sprite_width * 0.75 / 2 and
	abs(mouse_y - y) < sprite_height * 0.75 / 2{
	
	image_index = 1
	
}
else{
	image_index = 0
}