// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function remap_right(){
//	IN_REMAP = true;
	
	with(obj_con_input) {
		loc_IN_RIGHT = -1;
		loc_reassign = true;
		loc_key_id = "right";
	}
}