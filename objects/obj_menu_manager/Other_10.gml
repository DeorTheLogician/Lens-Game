/// @description Create Main Menu UI
// You can write your code in this editor

show_debug_message("paused");

instance_deactivate_layer("Instances");

var _cv = window_get_height() * .45;
var _ch = window_get_width()/2;

var _width = 300;
var _height = 100;

var _padding = 40;

if(room == rm_main_menu)
	create_button(_ch + (_width + _padding) * -.5, _cv + (_height + _padding) * -.5, _width, _height, "Play", play_level_1, "UI");
else
	create_button(_ch + (_width + _padding) * -.5, _cv + (_height + _padding) * -.5, _width, _height, "Retry", room_restart, "UI");
create_button(_ch + (_width + _padding) * -.5, _cv + (_height + _padding) * .5, _width, _height, "Level Select", level_select, "UI");
create_button(_ch + (_width + _padding) * .5,_cv + (_height + _padding) * -.5, _width, _height, "Options", options, "UI");
create_button(_ch + (_width + _padding) * .5,_cv + (_height + _padding) * .5, _width, _height, "Controls", controls, "UI");
create_button(_ch + (_width + _padding) * 0,_cv + (_height + _padding) * 1.5, _width, _height, "Quit", game_end, "UI");