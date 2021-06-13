/// @description Insert description here
// You can write your code in this editor

//Define global variables.
globalvar IN_RIGHT, IN_RIGHT_PRESSED, IN_LEFT, IN_LEFT_PRESSED, IN_SWITCH, IN_SWITCH_PRESSED, IN_SWING, IN_SWING_PRESSED, IN_REMAP, IN_MENU, IN_RESTART;

//Set input keys:
IN_RIGHT = 0;
IN_RIGHT_PRESSED = 0;
IN_LEFT = 0;
IN_LEFT_PRESSED = 0;
IN_SWITCH = 0;
IN_SWITCH_PRESSED = 0;
IN_SWING = 0;
IN_SWING_PRESSED = 0;
IN_REMAP = 0;
IN_MENU = 0;
IN_RESTART = 0;

//Reassignment values:
loc_reassign = false;
loc_map = 0;
loc_key_id = noone;

//Set defaults:
loc_IN_RIGHT = ord("D");
loc_IN_LEFT = ord("A");
loc_IN_SWITCH = vk_shift;
loc_IN_SWING = vk_space;
loc_IN_MENU = vk_escape;
loc_IN_RESTART = ord("R");