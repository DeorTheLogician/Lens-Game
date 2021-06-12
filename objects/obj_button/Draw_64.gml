/// @description Insert description here
// You can write your code in this editor
//Set button color
draw_set_color(merge_color(color, hover_color, hover));

//Draw button
draw_roundrect(x - width/2, y - height/2, x + width/2, y + height/2, false);

//Draw text
draw_set_color(text_color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);

//Reset values
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);