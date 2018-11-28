if mouse_check_button_pressed(mb_left){
	
	if !view_get_visible(viewport_id) and
		abs(mouse_x - x) < sprite_width * 0.75 / 2 and
		abs(mouse_y - y) < sprite_height * 0.75 / 2
		{
		cursor_sprite = spr_cursor_empty
		view_set_visible(viewport_id, true)
		mirror1_id.visible = true
		mirror2_id.visible = true
		visible = false
	}
	else if view_get_visible(viewport_id){
		cursor_sprite = spr_cursor
		view_set_visible(viewport_id, false)
		mirror1_id.visible = false
		mirror2_id.visible = false
		visible = true
	}
}

if view_get_visible(viewport_id){
	m_x = max( min(mouse_x - viewport_width / 2, room_width - viewport_width), 0 )
	m_y = max( min(mouse_y - viewport_height / 2, room_height - viewport_height), 0 )
	
	camera_set_view_pos(camera_id, m_x + camera_x_offset, m_y + camera_y_offset)
	view_set_xport(viewport_id, m_x)
	view_set_yport(viewport_id, m_y)
	
	mirror1_id.x = m_x + viewport_width / 2
	mirror1_id.y = m_y + viewport_height / 2
	mirror2_id.x = m_x + camera_x_offset + viewport_width / 2
	mirror2_id.y = m_y + camera_y_offset + viewport_height / 2
}