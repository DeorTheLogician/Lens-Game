/// @description Insert description here
// You can write your code in this editor
radius = 96*1.5;

lens1 = instance_create_layer(x + radius/2, y, "Instances", obj_phys_ball);
lens1.control = true;

lens2 = instance_create_layer(x - radius/2, y, "Instances", obj_phys_ball);
lens2.control = false;

lens1.partner = lens2;
lens2.partner = lens1;

bar = physics_joint_distance_create(lens1, lens2, lens1.x, lens1.y, lens2.x, lens2.y, false);

active_lens = 0;