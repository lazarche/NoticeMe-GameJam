/// @description Insert description here
// You can write your code in this editor
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