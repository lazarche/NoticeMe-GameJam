if(focused && control && gamepad_button_check_pressed(controller_id, gp_face4))
{
	global.music = !global.music;
	if(global.music)
		obj_music.PlayMusic();
		else
		obj_music.StopMusic();
}
if(global.music)
	image_index = 0;
	else
	image_index = 1;