/// @description Play a sound if you bonk something.
// You can write your code in this editor

if(free == false && tink == false){
	rng = round(random_range(0,15))
	switch(rng){
		case 1: audio_play_sound(tink01,0,0) break;
		case 2: audio_play_sound(tink02,0,0) break;
		case 3: audio_play_sound(tink03,0,0) break;
		case 4: audio_play_sound(tink04,0,0) break;
		case 5: audio_play_sound(tink05,0,0) break;
		case 6: audio_play_sound(tink06,0,0) break;
		case 7: audio_play_sound(tink07,0,0) break;
		case 8: audio_play_sound(tink08,0,0) break;
		case 9: audio_play_sound(tink09,0,0) break;
		case 10: audio_play_sound(tink10,0,0) break;
		case 11: audio_play_sound(tink11,0,0) break;
		case 12: audio_play_sound(tink12,0,0) break;
		case 13: audio_play_sound(tink13,0,0) break;
		case 14: audio_play_sound(tink14,0,0) break;
		case 15: audio_play_sound(tink15,0,0) break;

	}
	tink = true;
}