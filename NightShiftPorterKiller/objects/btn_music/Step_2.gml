if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	clicked = true;
	alarm[1] = 7;
}


function OnClick() {
	global.music = !global.music;
	if(global.music)
		obj_music.PlayMusic();
		else
		obj_music.StopMusic();
}



if(global.music)
	sprite_index = spr_btn_music;
	else
	sprite_index = spr_btn_music_off;
	