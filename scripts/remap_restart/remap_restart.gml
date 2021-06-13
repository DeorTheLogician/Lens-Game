// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remap_restart(){
	audio_play_sound(tink07, 0, 0);
	
	with(obj_con_input) {
		loc_IN_RESTART = -1;
		loc_reassign = true;
		loc_key_id = "restart";
	}
}