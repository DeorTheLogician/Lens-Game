/// @description Insert description here
// You can write your code in this editor
instance_deactivate_layer("UI");

width = 400;
height = 600;
color = c_ltgrey;

text_color = c_black;
hover_text_color = c_white;

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
inputs = array_create(4);
controller = instance_nearest(x, y, obj_con_input);