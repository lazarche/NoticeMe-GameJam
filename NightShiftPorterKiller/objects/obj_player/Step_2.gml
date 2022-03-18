/// @description Lightining and exit score
light_draw_circle(x, y, 200, c_white, 1);

if(you_died_alpha > 1 && (gamepad_button_check_pressed(controller_id, attack_button) || keyboard_check_pressed(vk_escape))) {
	
	if (gxc_get_query_param("challenge") != undefined)
	{
		play_sound(snd_logo_explosion);
	   gxc_challenge_submit_score(global.highscore);
	}
	
	global.highscore = 0;
	global.hp = 5;
	global.weapon_id = "pistol";
	global.stage = 0;
	global.level = 1;
	
	room_goto(rm_menu);	
}