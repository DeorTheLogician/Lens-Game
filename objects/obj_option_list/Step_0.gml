/// @description Insert description here
// You can write your code in this editor
//Mouse input
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);
var _mouse_press = mouse_check_button_pressed(mb_left);

//Update control array
with(controller) {
	other.inputs[0] = loc_IN_LEFT;
	other.inputs[1] = loc_IN_RIGHT;
	other.inputs[2] = loc_IN_SWITCH;
	other.inputs[3] = loc_IN_SWING;
}


//Operate on list
var _size = ds_list_size(list);
for (var i = 0; i < _size; i++) {
	//Array data
	var _arr = list[| i];
	var _name = _arr[OPTION_PROPERTIES.NAME];
	var _sel = _arr[OPTION_PROPERTIES.SELECTED];
	var _vals = _arr[OPTION_PROPERTIES.VALUES];
	var _script = _arr[OPTION_PROPERTIES.SCRIPT];
	
	//Coordinates
	var _x1 = x + padding;
	var _y1 = y + padding + item_height * i;
	var _x2 = x + width - padding;
	var _y2 = _y1 + item_height;
	
	// Get if hovering
	var _hover = point_in_rectangle(_mouse_x, _mouse_y, _x1, _y1, _x2, _y2);
	
	if(_hover) {
		//Set hover variable
		hover_id = i;
		
		if(hover_id != last_hover_id)
			audio_play_sound(hover_sound, 0, 0);
		
		//Select
		if(_sel == -1 && _mouse_press) {
			switch(_name) {
				case "Close":
					if(!controller.loc_reassign) {
						audio_play_sound(tink03, 0, 0);
						instance_destroy();
					}
					break;
				
				default:
					if(_script >= 0)
						script_execute(_script);
					break;
				
			}
		}
		
		//Change value
		if(_sel > -1) {
			var _wheel = mouse_wheel_up() - mouse_wheel_down();
			
			//Wheel input
			if(_wheel != 0) {
				_sel = clamp(_sel + _wheel, 0, array_length(_vals) - 1);
				
				_arr[@ OPTION_PROPERTIES.SELECTED] = _sel;
				
				//Apply to global variables
				switch(type) {
					case LIST_TYPE.SETTINGS:
						switch(_name) {
							case "Window Scale":
								WINDOW_MUL = _vals[_sel];
								audio_play_sound(tink03, 0, 0);
								break;
							case "Music Volume":
								MUSIC_VOL_MUL = _vals[_sel];
								audio_group_set_gain(ag_music, MUSIC_VOL_MUL, 0);
								audio_play_sound(tink03, 0, 0);
								break;
							case "SFX Volume":
								SFX_VOL_MUL = _vals[_sel];
								audio_group_set_gain(ag_sfx, SFX_VOL_MUL, 0);
								audio_play_sound(tink03, 0, 0);
								break;
							case "Rotation Style":
								ROT_STYLE = _vals[_sel];
								audio_play_sound(tink03, 0, 0);
								break;
						}
						break;
				}
			}
		}
	}
}

last_hover_id = hover_id;