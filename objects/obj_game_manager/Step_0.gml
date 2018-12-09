/// @description Insert description here
// You can write your code in this editor
if room == rm_intro {
	// when finish tutorial, change room
	if global.GAME_STAGE == 1{
		room_goto(rm_game)
	}
}
else if room == rm_game {
	
	// when found all three diaries
	if global.GAME_STAGE == 4{
		room_goto(rm_end)
	}
}
else if room == rm_end {
	if global.GAME_STAGE == 0{
		audio_stop_sound(snd_woman_crying)
		room_goto(rm_intro)
	}
}