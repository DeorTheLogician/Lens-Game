/// @description Insert description here
// You can write your code in this editor

//Draw background
draw_set_color(color);
draw_roundrect(x, y, x + width, y + height, 0);
draw_set_color(c_white);

//Draw list
var _size = ds_list_size(list);

for(var i = 0; i < _size; i++) {
	//Array data
	var _arr = list[| i];
	var _name = _arr[OPTION_PROPERTIES.NAME];
	var _sel = _arr[OPTION_PROPERTIES.SELECTED];
	var _vals = _arr[OPTION_PROPERTIES.VALUES];
	
	//Position to draw
	var _x = x + padding;
	var _y = y + padding + item_height * i;
	
	//Text color
	if(i != hover_id)
		draw_set_color(text_color);
	else
		draw_set_color(hover_text_color);
		
	//Draw name
	draw_text(_x, _y, _name);
	
	//Draw value
	if (_sel > -1) {
		var _val = _vals[_sel]
		
		draw_set_halign(fa_right);
		draw_text(x + width - padding, _y, _val);
		draw_set_halign(fa_left);
	}
	
	if (type == LIST_TYPE.CONTROLS) {
		
		draw_set_halign(fa_right);
		if(_name != "Close" && inputs[i] != -1)
			draw_text(x + width - padding, _y, string(inputs[i]));
		draw_set_halign(fa_left);
	}
	
	//Reset color
	draw_set_color(c_white);
}