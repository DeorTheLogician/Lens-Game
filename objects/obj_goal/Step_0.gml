/// @description Insert description here
// You can write your code in this editor

if(!victory) {
	var _ball1 = collision_point(x - detection_radius, y, obj_phys_ball, true, true);
	var _ball2 = collision_point(x + detection_radius, y, obj_phys_ball, true, true);

	if(instance_exists(_ball1) && instance_exists(_ball2) && _ball1.phy_speed == 0 && _ball2.phy_speed == 0) {
		timer++;
		show_debug_message(timer);
	} else {
		timer = 0;
	}

	if(timer == goal_time) {
		var _ch = window_get_width() / 2;
		var _cv = window_get_height() / 2;
		
		victory = true;
		create_button(_ch, _cv + 12, button_width, button_height, "Next Level", room_goto_next, "UI");
	}
}

if(victory) {	
	instance_deactivate_layer("Instances");
}
