if keyboard_check_pressed(ord("M")){
	if view_get_visible(viewport_id){
		view_set_visible(viewport_id, false)
		mirror1_id.visible = false
		mirror2_id.visible = false
	}
	else{
		view_set_visible(viewport_id, true)
		mirror1_id.visible = true
		mirror2_id.visible = true
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