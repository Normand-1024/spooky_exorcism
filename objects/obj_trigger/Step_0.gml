

if place_meeting(x,y, obj_talisman_yellow){
	/*
	if global.GAME_STAGE == 0{
		if trigger_id == -1 and
			place_meeting(x,y, obj_talisman_yellow){
			
				if current_timer <= smoke_clearing_time{
					var a = layer_get_all_elements("world_smoke_spr");
					for (var i = 0; i < array_length_1d(a); i++;)
					{
						if layer_get_element_type(a[i]) == layerelementtype_sprite
						{
							layer_sprite_alpha(a[i], 1 - (current_timer / smoke_clearing_time))
						}
					}
				
					current_timer += 1
				}
				else {
					var a = layer_get_all_elements("world_smoke_spr");
					for (var i = 0; i < array_length_1d(a); i++;)
					{
						if layer_get_element_type(a[i]) == layerelementtype_sprite
						{
							layer_sprite_destroy(a[i])
						}
					}
				
					global.GAME_STAGE = 1
				}
			
		}
	}
	*/
	b_if_wrong = false
	wrong_stage = true
	
	if global.GAME_STAGE == 1{
		if trigger_id == -2{
			var a = layer_get_all_elements("bedroom_smoke_spr");
			for (var i = 0; i < array_length_1d(a); i++;)
			{
				layer_sprite_alpha(a[i], 0)
			}
		}
		else if trigger_id == 2{
			global.READING_NOTE = true
		}
		else if trigger_id == 3{
			b_if_wrong = true
		}
		else{
			wrong_stage = true
		}
		
	}
	else if global.GAME_STAGE == 2{
		if trigger_id == -3{
			var a = layer_get_all_elements("livingroom_smoke_spr");
			for (var i = 0; i < array_length_1d(a); i++;)
			{
				layer_sprite_alpha(a[i], 0)
			}
			b_if_wrong = false
		}
		else if trigger_id == 5{
			global.READING_NOTE = true
			b_if_wrong = false
		}
		else if trigger_id == 4 or trigger_id == 6 or trigger_id == 7{
			b_if_wrong = true
		}
		else{
			wrong_stage = true
		}
	}
	else if global.GAME_STAGE == 3{
		if trigger_id == -4{
			var a = layer_get_all_elements("bathroom_smoke_spr");
			for (var i = 0; i < array_length_1d(a); i++;)
			{
				layer_sprite_alpha(a[i], 0)
			}
			b_if_wrong = false
		}
		else if trigger_id == 11{
			global.READING_NOTE = true
			b_if_wrong = false
		}
		else if trigger_id == 8 or trigger_id == 9 or trigger_id == 10{
			b_if_wrong = true
		}
		else{
			wrong_stage = true
		}
	}
	
	if b_if_wrong{
		instance_create_depth(x + sprite_width/2, y + sprite_height/2, 101, obj_bloodsplash)
		t = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_talisman_yellow,0, true)
		instance_destroy(t)
	}
	else if wrong_stage{
		t = collision_rectangle(x, y, x + sprite_width, y + sprite_height, obj_talisman_yellow,0, true)
		instance_destroy(t)
	}
}