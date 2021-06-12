// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function controls(){
	var _cv = window_get_height() * .45;
	var _ch = window_get_width()/2;
	
	var _width = 400;
	var _height = 600;
	
	create_option_list(_ch - _width/2, _cv - _height/2, _width, _height, LIST_TYPE.CONTROLS);
}