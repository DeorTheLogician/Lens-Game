// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remap_left(){
	show_debug_message("remap left");
//	IN_REMAP = true;
	audio_play_sound(tink07, 0, 0);
	
	with(obj_con_input) {
		loc_IN_LEFT = -1;
		loc_reassign = true;
		loc_key_id = "left";
	}
}