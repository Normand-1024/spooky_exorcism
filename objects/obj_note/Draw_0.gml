draw_self()

if global.READING_NOTE{
	visible = true
	
	//
	// Change note sprites depending on the game stage and item index
	//
	if global.GAME_STAGE == 1{
		sprite_index = spr_note1
	}
	else if global.GAME_STAGE == 2{
		sprite_index = spr_note2
	}
	else if global.GAME_STAGE == 3{
		sprite_index = spr_note21
	}
}
else {
	visible = false
}

/*
intro
diary 0:
it didn't work!!!
he survived
they are after ME
HELP
*/


/*
indulgence
diary 1:
2000-04-02
he was drunk again
he blamed me
he said i ruined his life
i will, i will
soon demons will catch him
*/

/*
violence
diary 2:
2000-03-11
he got mad again today
like he did with Mommy
it hurts
REVENGE
REVENGE
REVENGE
*/

/*
passion?
diary 3:
2000-02-13
i am scared

Mommy is screaming

where did Mommy go?
*/