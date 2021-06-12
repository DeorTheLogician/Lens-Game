// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg text
/// @arg script
/// @arg layer

function create_button(){
	//Arguments
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _text = argument[4];
	var _script = argument[5];
	var _layer = argument[6];
	
	//Create button
	var _button = instance_create_layer(_x, _y, _layer, obj_button);
	
	//Set values
	with(_button) {
		height = _height;
		width = _width;
		text = _text;
		script = _script;
	}
	
	return _button;
}