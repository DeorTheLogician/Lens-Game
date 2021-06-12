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
globalvar WINDOW_MUL, MUSIC_VOL_MUL, SFX_VOL_MUL;
WINDOW_MUL = 1.5;
MUSIC_VOL_MUL = 1;
SFX_VOL_MUL = 1;

//Create controller
instance_create_layer(0, 0, "UI_2", obj_con_input);

//Create menu
instance_create_layer(0, 0, "UI", obj_menu_manager);

//Create camera
instance_create_layer(0, 0, "UI_2", obj_camera);

//Audio
audio_group_load(ag_music);
audio_group_load(ag_sfx);