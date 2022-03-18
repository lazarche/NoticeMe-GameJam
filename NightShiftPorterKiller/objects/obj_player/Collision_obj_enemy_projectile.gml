/// @description Collision with enemy bullet
if(!hitted && hp > 0) {	
	hitted = true;
	hp -= 1;
	with(other)
		instance_destroy();
		
	if(hp == 0) {
			state = "die";
			audio_stop_all();
			play_sound(snd_you_died)	
		}
	play_sound(snd_player_hit);
}