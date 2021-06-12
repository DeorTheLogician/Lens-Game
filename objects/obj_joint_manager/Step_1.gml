/// @description Insert description here
// You can write your code in this editor
input_control_switch = keyboard_check_pressed(vk_shift);
input_swing_mode = keyboard_check(ord("X")) ||  keyboard_check(vk_space);
input_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
input_left = keyboard_check(ord("A")) || keyboard_check(vk_left);

if(input_control_switch && !input_swing_mode)
	active_lens = (active_lens + 1) mod 2;