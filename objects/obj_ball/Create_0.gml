/// @description Insert description here
// You can write your code in this editor

state = 0;
free = false;
control = true;
stage_collision = layer_tilemap_get_id("stage_collision");
lifetime = 0;

hsp = 0;
vsp = 0;
grav = 0.5;

accel = 0.5;
max_ground_speed = 5;
ground_friction = 0.25;

air_accel = 0.15;
max_air_speed = 5;
air_friction = 0.05;
max_fall_speed = 9;

jump_speed = 8;

radius = 64;
partner = noone;
last_input_control_switch = false;