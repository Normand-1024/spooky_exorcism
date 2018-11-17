if keyboard_check(vk_right){
	//right collision
	if (place_meeting(x+mov_spd, y, obj_collision)){
		while(!place_meeting(x+1, y, obj_collision)){
			x+= 1	
		}
	}else{
		x = min(room_width, x + mov_spd)
	}
}
if keyboard_check(vk_left){
	if (place_meeting(x-mov_spd, y, obj_collision)){
		while(!place_meeting(x-1, y, obj_collision)){
			x-= 1	
		}
	}else{
		x = max(0, x - mov_spd)
	}
}
if keyboard_check(vk_up){
	if (place_meeting(x,y-mov_spd, obj_collision)){
		while(!place_meeting(x, y-1, obj_collision)){
			y -= 1	
		}
	}else{
		y = max(0, y - mov_spd)
	}
}
if keyboard_check(vk_down){
	if (place_meeting(x,y+mov_spd, obj_collision)){
		while(!place_meeting(x, y+1, obj_collision)){
			y += 1	
		}
	}else{
		y = max(0, y + mov_spd)
	}
}

