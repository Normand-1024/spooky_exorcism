

if place_meeting(x,y, obj_incense){
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
	
	if global.GAME_STAGE == 1{
		if trigger_id == -2{
			var a = layer_get_all_elements("bedroom_smoke_spr");
			for (var i = 0; i < array_length_1d(a); i++;)
			{
				layer_sprite_alpha(a[i], 0)
			}
		}	
	}
	else if global.GAME_STAGE == 2{
		if trigger_id == -3{
			var a = layer_get_all_elements("livingroom_smoke_spr");
			for (var i = 0; i < array_length_1d(a); i++;)
			{
				layer_sprite_alpha(a[i], 0)
			}
		}
	}
	else if global.GAME_STAGE == 3{
		if trigger_id == -4{
			var a = layer_get_all_elements("bathroom_smoke_spr");
			for (var i = 0; i < array_length_1d(a); i++;)
			{
				layer_sprite_alpha(a[i], 0)
			}
		}
	}
}