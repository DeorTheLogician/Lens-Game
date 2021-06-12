/// @description Insert description here
// You can write your code in this editor

if(collision_point(x, y + sprite_get_height(sprite_index)/2 + 1, obj_phys_wall, true, true))
	free = false;
else
	free = true;

input_swing_mode = keyboard_check(ord("X")) || keyboard_check(vk_space);
input_swing_mode_pressed = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_space);
input_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
input_right_pressed = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
input_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
input_left_pressed = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
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
	
	if(input_swing_mode_pressed)
		can_rotate = false;
	
	if(input_right_pressed) {
		can_rotate = true;
		
		if(dir_to_partner > 210 && dir_to_partner < 330)
			torque_dir = 1;
		else
			torque_dir = -1;
	}
	
	if(input_left_pressed) {
		can_rotate = true;
		
		if(dir_to_partner > 210 && dir_to_partner < 330)
			torque_dir = -1;
		else
			torque_dir = 1;
	}
	
	if((input_right || input_left) && can_rotate)
		physics_apply_force(x, y, lengthdir_x(torque, dir_to_partner + 90 * torque_dir), lengthdir_y(torque, dir_to_partner + 90 * torque_dir));
}