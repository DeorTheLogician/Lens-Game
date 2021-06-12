// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @arg x
/// @arg y
/// @arg width
/// @arg height
/// @arg LIST_TYPE

function create_option_list(){
	//Arguments
	var _x = argument[0];
	var _y = argument[1];
	var _width = argument[2];
	var _height = argument[3];
	var _type = argument[4];
	
	//Create list
	var _list = instance_create_layer(_x, _y, "UI_2", obj_option_list);
	
	//Set values
	with(_list) {
		width = _width;
		height = _height;
		type = _type;
		
		//Populate list
		switch(_type) {
			case LIST_TYPE.LEVEL_SELECT:
				ds_list_add(list, ["Playground", -1, [], play_playground]);
				ds_list_add(list, ["Level 1", -1, [], play_level_1]);
				ds_list_add(list, ["Close", -1, [], -1]);
				break;
			case LIST_TYPE.SETTINGS:
				ds_list_add(list, ["Window Scale", 2, [.5, 1, 1.5, 2, 2.5], -1]);
				ds_list_add(list, ["Music Volume", 10, [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], -1]);
				ds_list_add(list, ["SFX Volume", 10, [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1], -1]);
				ds_list_add(list, ["Close", -1, [], -1]);
				break;
			case LIST_TYPE.CONTROLS:
				ds_list_add(list, ["Left", -1, [], remap_left]);
				ds_list_add(list, ["Right", -1, [], remap_right]);
				ds_list_add(list, ["Switch Lens", -1, [], remap_switch]);
				ds_list_add(list, ["Swing Mode", -1, [], remap_swing]);
				ds_list_add(list, ["Close", -1, [], -1]);
		}
	}
}