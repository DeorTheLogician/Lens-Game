/// @description Insert description here
// You can write your code in this editor
view_ratio = 2;

view_width = 1920/view_ratio;
view_height = 1080/view_ratio;

window_scale = WINDOW_MUL;

focus_object = noone;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_height * window_scale);