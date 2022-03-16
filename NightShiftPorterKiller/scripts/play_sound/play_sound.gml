// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_sound(snd){
if(global.sound_effects)
	{
		audio_play_sound(snd,1,false); //ZVUK SKOKA
		audio_sound_gain(snd,global.sound_gain,0);
	}
}

function play_music(snd) {
	if(global.music)
	{
		audio_play_sound(snd,1,true); //ZVUK SKOKA
		audio_sound_gain(snd,global.music_gain,0);
	}
}