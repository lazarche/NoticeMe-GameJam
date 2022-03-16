music = snd_music_menu;

function PlayMusic() {
	if(music != 0)
		play_music(music);
}

function StopMusic() {
	if(music != 0)
		audio_stop_sound(music);
}

function SetMusic(snd){
	StopMusic();
	music = snd;
	PlayMusic();
}

PlayMusic();
