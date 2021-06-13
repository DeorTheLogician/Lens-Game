/// @description Insert description here
// You can write your code in this editor
var _hover = get_hover();
var _click = _hover && mouse_check_button_pressed(mb_left);

//Hover
hover = lerp(hover, _hover, 0.1);
y = lerp(y, ystart - _hover * 4, 0.1);

if(hover && !last_hover)
	audio_play_sound(sound, 0, 0);

//Click
if(_click && script >= 0) {
	audio_play_sound(tink07, 0, 0);
	script_execute(script);
}

last_hover = hover;