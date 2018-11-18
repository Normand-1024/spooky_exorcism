/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("B")){
	bowl_on = !bowl_on
}

if bowl_on == true{
	if snd_timer <= 0 {
		
		show_debug_message("FTJFJFYUKGYUK" + string(distance_to_object(obj_bowl_final)))
		if distance_to_object(obj_bowl_final) <= 5{
			audio_stop_sound(snd_bowl_search)
			audio_stop_sound(snd_bowl_final)
			audio_play_sound(snd_bowl_final, 0, false)
		}
		else {
			audio_sound_pitch(snd_bowl_search, -min(400, distance_to_object(obj_bowl_final))/400 + 2)
			audio_stop_sound(snd_bowl_search)
			audio_stop_sound(snd_bowl_final)
			audio_play_sound(snd_bowl_search, 1, false)
		}
		snd_timer = snd_timer_max
	}
	
	x = mouse_x
	y = mouse_y
	snd_timer-=1
}