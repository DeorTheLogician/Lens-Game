/// @description Insert description here
// You can write your code in this editor
// draw_text(0,  0, "hsp: " + string(hsp));
// draw_text(0, 16, "vsp: " + string(vsp));
// draw_text(0, 32, "free: " + string(free));
// draw_text(0, 48, "cp6: " + string(cp6));
// draw_text(0, 64, "left: " + string(input_left));

if(instance_exists(partner))
	draw_line_color(x, y, partner.x, partner.y, c_dkgray, c_dkgray);

draw_self();