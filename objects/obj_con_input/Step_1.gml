/// @description Insert description here
// You can write your code in this editor
//Check if player is remapping control
//if(IN_REMAP) {
//	loc_reassign = true;
//	IN_REMAP = false;
//}

//show_debug_message(loc_reassign);

if(loc_reassign) {
//	show_debug_message("Reassign for " + loc_key_id);
	if(keyboard_check_pressed(vk_anykey) && keyboard_lastkey != loc_IN_MENU) {
		switch(loc_key_id) {
			case "left":
				loc_IN_LEFT = keyboard_lastkey;
				show_debug_message(loc_key_id + " assigned to " + string(loc_IN_LEFT));
				break;
			case "right":
				loc_IN_RIGHT = keyboard_lastkey;
				show_debug_message(loc_key_id + " assigned to " + string(loc_IN_RIGHT));
				break;
			case "switch":
				loc_IN_SWITCH = keyboard_lastkey;
				show_debug_message(loc_key_id + " assigned to " + string(loc_IN_SWITCH));
				break;
			case "swing":
				loc_IN_SWING = keyboard_lastkey;
				show_debug_message(loc_key_id + " assigned to " + string(loc_IN_SWING));
				break;
		}
		
		loc_reassign = false;
		loc_key_id = noone;
	}
	
	else if(keyboard_check_pressed(loc_IN_MENU)) {
		loc_reassign = false;
		loc_key_id = noone;
	}
}

//Read inputs to feed to rest of game.
//show_debug_message("left: " + string(loc_IN_LEFT));
//show_debug_message("right: " + string(loc_IN_RIGHT));
//show_debug_message("switch: " + string(loc_IN_SWITCH));
//show_debug_message("swing: " + string(loc_IN_SWING));


IN_RIGHT = keyboard_check(loc_IN_RIGHT);
IN_RIGHT_PRESSED = keyboard_check_pressed(loc_IN_RIGHT);
IN_LEFT = keyboard_check(loc_IN_LEFT);
IN_LEFT_PRESSED = keyboard_check_pressed(loc_IN_LEFT);
IN_SWITCH = keyboard_check(loc_IN_SWITCH);
IN_SWITCH_PRESSED = keyboard_check_pressed(loc_IN_SWITCH);
IN_SWING = keyboard_check(loc_IN_SWING);
IN_SWING_PRESSED = keyboard_check_pressed(loc_IN_SWING);
IN_MENU = keyboard_check_pressed(loc_IN_MENU);