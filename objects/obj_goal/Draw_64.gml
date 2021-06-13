/// @description Insert description here
// You can write your code in this editor

if(victory) {
	var _ch = window_get_width() / 2;
	var _cv = window_get_height() / 2;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fn_subtitle)
	
	draw_set_color(ui_color);
	draw_roundrect(_ch - popup_width/2, _cv - popup_height/2,
				   _ch + popup_width/2, _cv + popup_height/2, false);
	
	draw_set_font(fn_default);
	draw_set_color(C_MENU_TEXT_1);
	draw_text(_ch, _cv - 37, "Level Complete!");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
}