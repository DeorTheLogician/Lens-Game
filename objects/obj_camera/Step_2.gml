/// @description Insert description here
// You can write your code in this editor
#macro VIEW view_camera[0]

camera_set_view_size(VIEW, view_width, view_height);

if(instance_exists(obj_phys_ball)) {
	with(obj_phys_ball) {
		if(control)
			other.focus_object = id;
	}
}

if(instance_exists(focus_object)) {
	var _x = clamp(focus_object.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(focus_object.y - view_height / 2, 0, room_height - view_height);
	
	var _cur_x = camera_get_view_x(VIEW);
	var _cur_y = camera_get_view_y(VIEW);
	
	var _cam_spd = 0.1;
	
	camera_set_view_pos(VIEW, lerp(_cur_x, _x, _cam_spd), lerp(_cur_y, _y, _cam_spd));
}