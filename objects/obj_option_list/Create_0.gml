/// @description Insert description here
// You can write your code in this editor
instance_deactivate_layer("UI");

width = 400;
height = 600;
color = C_MENU_BUTTON;

text_color = C_MENU_TEXT_1;
hover_text_color = C_MENU_TEXT_2;

//GUI
item_height = 48;
padding = 24;

//List
list = ds_list_create();

//Variables
hover_id = -1;
last_hover_id = -1
hover_sound = tink12;

//Inputs
inputs = array_create(5);
controller = instance_nearest(x, y, obj_con_input);