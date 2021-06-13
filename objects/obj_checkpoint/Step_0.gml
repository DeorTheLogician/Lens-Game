/// @description Insert description here
// You can write your code in this editor
if(!checkpoint_active) {
	image_index = 0;
	
	var _ball = collision_rectangle(x - detection_width/2, y - detection_height, x + detection_width/2, y, obj_phys_ball, true, true);
	
	if(instance_exists(_ball) && _ball.control) {
		checkpoint_active = true;
		audio_play_sound(tink10, 0, 0);
	}
}

if(checkpoint_active) {
	image_index = 1;
}