/// @description Insert description here
// You can write your code in this editor

if(IN_MENU) {
	menu_open = !menu_open;
	
	if(menu_open)
		event_user(0);
	else
		event_user(1);
}