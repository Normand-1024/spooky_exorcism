if_walking = false

if not global.READING_NOTE{
	if keyboard_check(ord("D")){
		//right collision
		if (place_meeting(x+mov_spd, y, obj_collision)){
			while(!place_meeting(x+1, y, obj_collision)){
				x+= 1	
			}
		}else{
			x = min(room_width, x + mov_spd)
		}
		if_walking = true
		image_index = 2
		image_xscale = -1
	}
	if keyboard_check(ord("A")){
		if (place_meeting(x-mov_spd, y, obj_collision)){
			while(!place_meeting(x-1, y, obj_collision)){
				x-= 1	
			}
		}else{
			x = max(0, x - mov_spd)
		}
		if_walking = true
		image_index = 2
		image_xscale = 1
	}
	if keyboard_check(ord("W")){
		if (place_meeting(x,y-mov_spd, obj_collision)){
			while(!place_meeting(x, y-1, obj_collision)){
				y -= 1	
			}
		}else{
			y = max(0, y - mov_spd)
		}
		if_walking = true
		image_index = 1
	}
	if keyboard_check(ord("S")){
		if (place_meeting(x,y+mov_spd, obj_collision)){
			while(!place_meeting(x, y+1, obj_collision)){
				y += 1	
			}
		}else{
			y = max(0, y + mov_spd)
		}
		if_walking = true
		image_index = 0
	}

	if if_walking{
		audio_resume_sound(snd_walking_1)
	}
	else{
		audio_pause_sound(snd_walking_1)
	}

	if global.BOWL{
		//if global.BOWL_TIMER <= 0 {
		if distance_to_object(obj_bowl_final) <= 5{
			audio_stop_sound(snd_bowl_search)
			audio_stop_sound(snd_bowl_final)
			// you found the position! display incense
			global.INCENSE_APPEAR = true
			audio_play_sound(snd_bowl_final, 0, false)
		}
		else {
			show_debug_message(string(distance_to_object(obj_bowl_final)))
			audio_sound_pitch(snd_bowl_search, -min(400, distance_to_object(obj_bowl_final))/200 + 3)
			audio_stop_sound(snd_bowl_search)
			audio_stop_sound(snd_bowl_final)
			audio_play_sound(snd_bowl_search, 1, false)
		}
		global.BOWL_TIMER = global.BOWL_MAX_TIME
		global.BOWL = false
		//}
		//global.BOWL_TIMER-=1
	}

	if global.TALISMAN_DRAGGED{
		if abs(mouse_x - x) > global.TALISMAN_RANGE or
			abs(mouse_y - y) > global.TALISMAN_RANGE{
			cursor_sprite = spr_cursor_out_of_range
		}
		else{
			cursor_sprite = spr_cursor
		}
	}
	if global.INCENSE_DRAGGED{
		if abs(mouse_x - x) > global.INCENSE_RANGE or
			abs(mouse_y - y) > global.INCENSE_RANGE{
			cursor_sprite = spr_cursor_out_of_range
		}
		else{
			cursor_sprite = spr_cursor
		}
	}
}