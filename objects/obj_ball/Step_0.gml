/// @description Insert description here
// You can write your code in this editor

if(lifetime == 0) {
	if(control) {
		partner = instance_create_depth(x + radius, y, depth, obj_ball);
		partner.control = false;
		partner.lifetime = 1;
	}
}

///Input detection.
if(!control){
	input_jump = keyboard_check(ord("X")) || keyboard_check(vk_space);
	input_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	input_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	input_none = !(input_jump || input_right || input_left);
} else {
	input_jump = false;
	input_right = false;
	input_left = false;
	input_none = true;
}
input_control_switch = keyboard_check_pressed(vk_shift);

if(!control && instance_exists(partner)) {
	hsp = partner.hsp * dsin(point_direction(partner.x, partner.y, x, y));
	vsp = partner.vsp * dcos(point_direction(partner.x, partner.y, x, y));
}

if(instance_exists(partner) && point_distance(x, y, partner.x, partner.y) != radius) {
	var dir_to_partner = point_direction(partner.x, partner.y, x, y);
	x = partner.x + lengthdir_x(radius, dir_to_partner);
	y = partner.y + lengthdir_y(radius, dir_to_partner);
}

if(input_control_switch && !last_input_control_switch) {
	control = (control + 1) mod 2;
}

///Collision Checking
//Hacky fix for collision
cp1 = tilemap_get_at_pixel(stage_collision, bbox_left - 1, bbox_top - 1);
cp2 = tilemap_get_at_pixel(stage_collision, bbox_left - 1, bbox_bottom + 1);
cp3 = tilemap_get_at_pixel(stage_collision, bbox_right + 1, bbox_top - 1);
cp4 = tilemap_get_at_pixel(stage_collision, bbox_right + 1, bbox_bottom + 1);
cp5 = tilemap_get_at_pixel(stage_collision, x, bbox_top - 1);
cp6 = tilemap_get_at_pixel(stage_collision, x, bbox_bottom + 1);

//Horizontal
if(hsp > 0)
	bbox_side = bbox_right;
else
	bbox_side = bbox_left;
if(hsp != 0) {
	if(tilemap_get_at_pixel(stage_collision, bbox_side+hsp+(hsp/abs(hsp)), bbox_top) || tilemap_get_at_pixel(stage_collision, bbox_side+hsp+(hsp/abs(hsp)), bbox_bottom)) 	{
		if(hsp > 0)
			x = x - (x mod 16) + 15 - (bbox_right - x);
		else
			x = x - (x mod 16) - (bbox_left - x);
		hsp = 0;
	}
}

//Vertical
if(vsp > 0)
	bbox_side = bbox_bottom;
else
	bbox_side = bbox_top;
if(vsp != 0) {
	if(tilemap_get_at_pixel(stage_collision, bbox_right, bbox_side+vsp+(vsp/abs(vsp))) || tilemap_get_at_pixel(stage_collision, bbox_left, bbox_side+vsp+(vsp/abs(vsp)))) {
		if(vsp > 0)
			y = bbox_bottom - (bbox_bottom mod 16) + 8;
		else
			y = bbox_top - (bbox_top mod 16) + 0;
		vsp = 0;
	}
}

if(!(cp6)) {
	free = true;
} else {
	free = false;
	vsp = 0;
}


///Behavior
if(free) {
	vsp = min(vsp + grav, max_fall_speed);
	
	//Air control
	if(abs(hsp) < max_air_speed) {
		if(input_right)
			hsp += air_accel;
	
		if(input_left)
			hsp -= air_accel;
	}
	
	//Air friction
	if(abs(hsp) >= air_friction)
		hsp *= (abs(hsp) - air_friction) / abs(hsp);
	else if(hsp != 0)
		hsp = 0;
}

if(!free) {
	//Walking
	if(input_right)
		hsp = min(hsp + accel, max_ground_speed);
		
	if(input_left)
		hsp = max(hsp - accel, -max_ground_speed);
	
	//Jump
	if(input_jump)
		vsp = -jump_speed;
	
	//Ground friction
	if(abs(hsp) >= ground_friction)
		hsp *= (abs(hsp) - ground_friction) / abs(hsp);
	else if(hsp != 0)
		hsp = 0;
}

x += hsp;
y += vsp;
lifetime++;
last_input_control_switch = input_control_switch;

if(instance_exists(partner) && point_distance(x, y, partner.x, partner.y) != radius) {
	var dir_to_partner = point_direction(partner.x, partner.y, x, y);
	x = partner.x + lengthdir_x(radius, dir_to_partner);
	y = partner.y + lengthdir_y(radius, dir_to_partner);
}