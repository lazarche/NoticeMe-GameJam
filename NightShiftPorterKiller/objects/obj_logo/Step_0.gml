/// @description 
if(!bang && bang_alpha >0)
	bang_alpha -= 0.03;
	

shake_sound++;

if(shake_sound > 6 && shake){
	shake_sound = 0;
	play_sound(snd_logo_shake)
	//dio_sound_pitch(snd_logo_shake, random_range(0.75,1));
}


	//Sound
	
