/// @description Insert description here
// You can write your code in this editor
var _ch = window_get_width() / 2;
var _cv = window_get_height() / 2;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(fn_title);
draw_set_color(c_black);

draw_text(_ch, _cv - 100, "Lens");

draw_set_font(fn_subtitle);

var _alpha = 0.5 * dcos(5 * lifetime) + 0.5;

draw_set_alpha(_alpha);

draw_text(_ch, _cv + 50, "Press ESC to continue...");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(fn_default);
draw_set_alpha(1);