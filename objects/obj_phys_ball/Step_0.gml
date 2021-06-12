/// @description Insert description here
// You can write your code in this editor

if(collision_point(x, y + sprite_get_height(sprite_index)/2 + 1, obj_phys_wall, true, true))
	free = false;
else
	free = true;

input_swing_mode = keyboard_check(ord("X")) || keyboard_check(vk_space);
input_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
input_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
input_none = !(input_swing_mode || input_right || input_left);
input_control_switch = keyboard_check_pressed(vk_shift);

if(input_control_switch && !input_swing_mode)
	control = (control + 1) mod 2;

if(control) {
	if(!input_swing_mode) {
//		physics_fixture_set_density(fix_ball, default_density);
		if(!free) {
			if(input_right && phy_speed_x < max_speed_ground)
				phy_speed_x += move_force_ground;
			if(input_left && phy_speed_x > -max_speed_ground)
				phy_speed_x -= move_force_ground;
		}
	
		if(free) {
			if(input_right && phy_speed_x < max_speed_air)
				phy_speed_x += move_force_air;
			if(input_left && phy_speed_x > -max_speed_air)
				phy_speed_x -= move_force_air;
		}
	} else if(!free) {
//		physics_fixture_set_density(fix_ball, 0);
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
}

if(!control && input_swing_mode && !partner.free) {
	var dir_to_partner = point_direction(partner.x, partner.y, x, y)
	
	//Need to set which mode it's in only on initial direction press to make it feel more consistent.
	if(dir_to_partner > 185 && dir_to_partner < 355) {
		if(input_right)
			physics_apply_force(x, y, lengthdir_x(torque, dir_to_partner + 90), lengthdir_y(torque, dir_to_partner + 90));
		if(input_left)
			physics_apply_force(x, y, lengthdir_x(torque, dir_to_partner - 90), lengthdir_y(torque, dir_to_partner - 90));
	} else {
		if(input_right)
			physics_apply_force(x, y, lengthdir_x(torque, dir_to_partner - 90), lengthdir_y(torque, dir_to_partner - 90));
		if(input_left)
			physics_apply_force(x, y, lengthdir_x(torque, dir_to_partner + 90), lengthdir_y(torque, dir_to_partner + 90));
	}
}