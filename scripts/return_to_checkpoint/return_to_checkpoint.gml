// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function return_to_checkpoint(){
	with(obj_phys_ball) {
		var _cp = instance_nearest(x, y, obj_checkpoint);
		var _joint = instance_nearest(x, y, obj_joint_manager);
	
		if(instance_exists(_cp) && _cp.checkpoint_active) {
			if(control)
				phy_position_x = _cp.x + _joint.radius/2;
			if(!control)
				phy_position_x = _cp.x - _joint.radius/2;
		
			phy_position_y = _cp.y - _cp.sprite_height;
			
			phy_speed_x = 0;
			phy_speed_y = 0;
		}
		
		else
			room_restart();
	}
}