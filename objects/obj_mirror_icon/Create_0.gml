camera_width = 200
camera_height = 200
camera_x_offset = 0 //x offset value between mouse and the mirror camera
camera_y_offset = -2144 //y offset value between mouse and the mirror camera

viewport_id = 2
viewport_width = 200
viewport_height = 200

camera_id = camera_create_view(mouse_x + camera_x_offset, mouse_y + camera_y_offset, camera_width, camera_height)

mirror1_id = instance_create_depth(x, y, -1, obj_mirror)
mirror2_id = instance_create_depth(x, y, -1, obj_mirror)
mirror1_id.visible = false
mirror2_id.visible = false
mirror_scale = 5
mirror1_id.image_xscale = mirror_scale
mirror1_id.image_yscale = mirror_scale
mirror2_id.image_xscale = mirror_scale
mirror2_id.image_yscale = mirror_scale


view_set_camera(viewport_id, camera_id)
view_set_wport(viewport_id, viewport_width)
view_set_hport(viewport_id, viewport_height)
view_set_visible(viewport_id, false)

global.MIRROR = false