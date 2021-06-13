// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg input
function get_input_name(){
	var _input = argument[0];
	var _out = "";
	
	switch(_input) {
		case vk_left:
			_out = "Left Arrow";
			break;
		case vk_right:
			_out = "Right Arrow";
			break;
		case vk_up:
			_out = "Up Arrow";
			break;
		case vk_down:
			_out = "Down Arrow";
			break;
		case vk_enter:
			_out = "Enter";
			break;
		case vk_space:
			_out = "Space";
			break;
		case vk_shift:
			_out = "Shift";
			break;
		case vk_control:
			_out = "Ctrl";
			break;
		case vk_alt:
			_out = "Alt";
			break;
		case vk_tab:
			_out = "Tab";
			break;
		case vk_home:
			_out = "Home";
			break;
		case vk_end:
			_out = "End";
			break;
		case vk_delete:
			_out = "Del";
			break;
		case vk_insert:
			_out = "Ins";
			break;
		case vk_pageup:
			_out = "PgUp";
			break;
		case vk_pagedown:
			_out = "PgDn";
			break;
		case vk_pause:
			_out = "Pause";
			break;
		case vk_printscreen:
			_out = "PrntScn";
			break;
		case vk_f1:
			_out = "F1";
			break;
		case vk_f2:
			_out = "F2";
			break;
		case vk_f3:
			_out = "F3";
			break;
		case vk_f4:
			_out = "F4";
			break;
		case vk_f5:
			_out = "F5";
			break;
		case vk_f6:
			_out = "F6";
			break;
		case vk_f7:
			_out = "F7";
			break;
		case vk_f8:
			_out = "F8";
			break;
		case vk_f9:
			_out = "F9";
			break;
		case vk_f10:
			_out = "F10";
			break;
		case vk_f11:
			_out = "F11";
			break;
		case vk_f12:
			_out = "F12";
			break;
		case vk_numpad0:
			_out = "Num 0";
			break;
		case vk_numpad1:
			_out = "Num 1";
			break;
		case vk_numpad2:
			_out = "Num 2";
			break;
		case vk_numpad3:
			_out = "Num 3";
			break;
		case vk_numpad4:
			_out = "Num 4";
			break;
		case vk_numpad5:
			_out = "Num 5";
			break;
		case vk_numpad6:
			_out = "Num 6";
			break;
		case vk_numpad7:
			_out = "Num 7";
			break;
		case vk_numpad8:
			_out = "Num 8";
			break;
		case vk_numpad9:
			_out = "Num 9";
			break;
		case vk_multiply:
			_out = "*";
			break;
		case vk_divide:
			_out = "/";
			break;
		case vk_add:
			_out = "+";
			break;
		case vk_subtract:
			_out = "-";
			break;
		case vk_decimal:
			_out = ".";
			break;
		case ord("¿"):
			_out = "/";
			break;
		case ord("¾"):
			_out = ".";
			break;
		case ord("¼"):
			_out = ",";
			break;
		case ord("Ü"):
			_out = "Backslash";
			break;
		case ord("»"):
			_out = "=";
			break;
		case ord("½"):
			_out = "-";
			break;
		case ord("À"):
			_out = "`";
			break;
		default:
			_out = chr(_input);
			break;
	}
	
	return _out;
}