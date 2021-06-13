/// @description Insert description here
// You can write your code in this editor

//Create list enums
enum LIST_TYPE {
	LEVEL_SELECT,
	SETTINGS,
	CONTROLS
}

enum OPTION_PROPERTIES {
	NAME,
	SELECTED,
	VALUES,
	SCRIPT
}

//Create global variables
if(room == rm_main_menu) {
	globalvar WINDOW_MUL, MUSIC_VOL_MUL, SFX_VOL_MUL, ROT_STYLE;
	WINDOW_MUL = 1.5;
	MUSIC_VOL_MUL = 1;
	SFX_VOL_MUL = 1;
	ROT_STYLE = "Relative";
}

//Level unlocks
if(room == rm_main_menu) {
	globalvar LVL1, LVL2;
	LVL1 = true;
	LVL2 = false;
}

if(room == rm_lvl1)
	LVL1 = true;

if(room == rm_lvl2)
	LVL2 = true;

//Create controller
if(!instance_exists(obj_con_input))
	instance_create_layer(0, 0, "UI_2", obj_con_input);

//Create menu
if(!instance_exists(obj_menu_manager))
	instance_create_layer(0, 0, "UI", obj_menu_manager);

//Create camera
if(!instance_exists(obj_camera))
	instance_create_layer(0, 0, "UI_2", obj_camera);

//Audio
audio_group_load(ag_music);
audio_group_load(ag_sfx);

//Colors
globalvar C_MENU_BG, C_MENU_BUTTON, C_MENU_TEXT_1, C_MENU_TEXT_2;

C_MENU_BG = $19317F;
C_MENU_BUTTON = $8E97B2;
C_MENU_TEXT_1 = c_black;
C_MENU_TEXT_2 = c_white;