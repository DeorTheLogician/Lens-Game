// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_hover(){
	var _mouse_x = device_mouse_x_to_gui(0);
	var _mouse_y = device_mouse_y_to_gui(0);
	
	return point_in_rectangle(_mouse_x, _mouse_y, x - width/2, y - height/2, x + width/2, y + height/2);
}