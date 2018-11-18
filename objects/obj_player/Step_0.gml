if_walking = false

if keyboard_check(vk_right){
	//right collision
	if (place_meeting(x+mov_spd, y, obj_collision)){
		while(!place_meeting(x+1, y, obj_collision)){
			x+= 1	
		}
	}else{
		x = min(room_width, x + mov_spd)
	}
	if_walking = true
}
if keyboard_check(vk_left){
	if (place_meeting(x-mov_spd, y, obj_collision)){
		while(!place_meeting(x-1, y, obj_collision)){
			x-= 1	
		}
	}else{
		x = max(0, x - mov_spd)
	}
	if_walking = true
}
if keyboard_check(vk_up){
	if (place_meeting(x,y-mov_spd, obj_collision)){
		while(!place_meeting(x, y-1, obj_collision)){
			y -= 1	
		}
	}else{
		y = max(0, y - mov_spd)
	}
	if_walking = true
}
if keyboard_check(vk_down){
	if (place_meeting(x,y+mov_spd, obj_collision)){
		while(!place_meeting(x, y+1, obj_collision)){
			y += 1	
		}
	}else{
		y = max(0, y + mov_spd)
	}
	if_walking = true
}

if if_walking{
	audio_resume_sound(snd_walking_1)
}
else{
	audio_pause_sound(snd_walking_1)
}

if keyboard_check_pressed(ord("B")){
	bowl_on = !bowl_on
	
	if bowl_on{
		cursor_sprite = spr_cursor_empty
	}
	else{
		cursor_sprite = spr_cursor
	}
}

if bowl_on{
	if snd_timer <= 0 {
		if distance_to_object(obj_bowl_final) <= 5{
			audio_stop_sound(snd_bowl_search)
			audio_stop_sound(snd_bowl_final)
			audio_play_sound(snd_bowl_final, 0, false)
		}
		else {
			show_debug_message(string(distance_to_object(obj_bowl_final)))
			audio_sound_pitch(snd_bowl_search, -min(400, distance_to_object(obj_bowl_final))/200 + 3)
			audio_stop_sound(snd_bowl_search)
			audio_stop_sound(snd_bowl_final)
			audio_play_sound(snd_bowl_search, 1, false)
		}
		snd_timer = snd_timer_max
	}
	snd_timer-=1
}
