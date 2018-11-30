/// @description Insert description here
// You can write your code in this editor
if room == rm_intro {
	// for now......
	if keyboard_check_pressed(vk_enter){
		global.GAME_STAGE = 1
	}
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
	
}