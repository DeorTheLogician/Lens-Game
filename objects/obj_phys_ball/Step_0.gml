/// @description Insert description here
// You can write your code in this editor

if(collision_point(x, y + sprite_get_height(sprite_index)/2 + 1, obj_phys_wall, true, true))
	free = false;
else
	free = true;

if(IN_SWITCH_PRESSED && !IN_SWING)
	control = (control + 1) mod 2;

if(control) {
	if(!IN_SWING) {
//		physics_fixture_set_density(fix_ball, default_density);
		if(!free) {
			if(IN_RIGHT && phy_speed_x < max_speed_ground)
				phy_speed_x += move_force_ground;
			if(IN_LEFT && phy_speed_x > -max_speed_ground)
				phy_speed_x -= move_force_ground;
		}
	
		if(free) {
			if(IN_RIGHT && phy_speed_x < max_speed_air)
				phy_speed_x += move_force_air;
			if(IN_LEFT && phy_speed_x > -max_speed_air)
				phy_speed_x -= move_force_air;
		}
	} else if(!free) {
//		physics_fixture_set_density(fix_ball, 0);
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
}

if(!control && IN_SWING && !partner.free) {
	var dir_to_partner = point_direction(partner.x, partner.y, x, y)
	
	//Need to set which mode it's in only on initial direction press to make it feel more consistent.
	
	if(IN_SWING_PRESSED)
		can_rotate = false;
	
	if(IN_RIGHT_PRESSED) {
		can_rotate = true;
		
		if(ROT_STYLE == "Relative") {
				torque_dir = 1;
			else
				torque_dir = -1;
		} else
			torque_dir = -1;
	}
	
	if(IN_LEFT_PRESSED) {
		can_rotate = true;
		
		if(ROT_STYLE == "Relative") {
				torque_dir = -1;
			else
				torque_dir = 1;
		} else
			torque_dir = 1;
	}
	
	if((IN_RIGHT || IN_LEFT) && can_rotate)
		physics_apply_force(x, y, lengthdir_x(torque, dir_to_partner + 90 * torque_dir), lengthdir_y(torque, dir_to_partner + 90 * torque_dir));
}


///Play SFX when on the ground or when colliding with a surface.
if(free != true && phy_speed >= 0 && audio_is_playing(DRAG33) == false){
	audio_play_sound(DRAG33,0,0);
	show_debug_message("playing audio!");
}
if(free != true && phy_speed >= 0){
	audio_sound_gain(DRAG33, .05+phy_speed/(max_speed_ground+1),0);
	show_debug_message("Changing Volume!");
}
if(free == true){
	audio_stop_sound(DRAG33);
	show_debug_message("Stopping Audio!");
}

//tink sfx variable
if(free == true){ tink = false};