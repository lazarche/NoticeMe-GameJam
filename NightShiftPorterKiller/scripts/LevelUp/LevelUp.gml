// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LevelUp(){

}

function LevelOptions() {
	var lvl = obj_player.level;
	var wpn = obj_player.gun.idd;
	var options = [0,0];
	
	switch(lvl) {
		case 2:
		#region Tier 2
		options[0] = "pistol_speed";
		options[1] = "pistol_damage";
		#endregion
		break;
		
		case 3:
		#region Tier 3
		switch(wpn) {
			case "pistol_speed":
			options[0] = "smg";
			options[1] = "rifle";
			break;
			case "pistol_damage":
			options[0] = "rifle";
			options[1] = "shotgun_short";
			break;
		}
		#endregion		
		break;
		
		case 4:
		//Tier 4
		switch (wpn) {
			case "smg":
			options[0] = "smg_damage";
			options[1] = "smg_speed";
			break;
			case "rifle":
			options[0] = "rifle_speed";
			options[1] = "rifle_pierce";
			break;
			case "shotgun_short":
			options[0] = "shotgun_speed";
			options[1] = "shotgun_spray";
			break;
		}
		break;
		
		
		case 5:
		//Tier 5
		switch(wpn) {
			case "smg_damage":
			options[0] = "lmg";
			break;
			
			case "smg_speed":
			options[0] = "smg_light";
			break;
			
			case "rifle_speed":
			options[0] = "rifle_better";
			break;
			
			case "rifle_pierce":
			options[0] = "rifle_semi";
			break;
			
			case "shotgun_speed":
			options[0] = "shotgun_auto";
			break;
			
			case "shotgun_spray":
			options[0] = "shotgun_longbarrel";
			break;
		}
		options[1] = "draza";
		
		break;
		
		case 6:
		switch(wpn) {
			case"lmg":
			options[0] = "lmg_damage";
			options[1] = "lmg_speed";
			break;
			
			case "smg_light":
			options[0] = "smg_light_damage";
			options[1] = "smg_light_speed";
			break;
			
			case "rifle_better":
			options[0] = "rifle_better_damage";
			options[1] = "rifle_better_speed";
			break;
			
			case "rifle_semi":
			options[0] = "rifle_semi_damage";
			options[1] = "rifle_semi_pierce";
			break;
			
			case "shotgun_auto":
			options[0] = "shotgun_auto_damage";
			options[1] = "shotgun_auto_speed";
			break;
			
			case "shotgun_longbarrel":
			options[0] = "shotgun_longbarrel_accuracy";
			options[1] = "shotgun_longbarrel_damage";
			break;
		}
		
		break;
		
		case 7:
		switch(wpn) {
			case "lmg_damage":
			options[0] = "hmg";
			break;
			
			case "lmg_speed":
			options[0] = "lmg_upgrade";
			break;
			
			case "smg_light_damage":
			options[0] = "smg_swat";
			break;
			
			case "smg_light_speed":
			options[0] = "dual_pistols";
			break;
			
			case "rifle_better_damage":
			options[0] = "rifle_military";
			break;
			
			case "rifle_better_speed":
			options[0] = "rifle_swat";
			break;
			
			case "rifle_semi_damage":
			options[0] = "sniper_auto";
			break;
			
			case "rifle_semi_pierce":
			options[0] = "sniper_heavy";
			break;
			
			case "shotgun_auto_damage":
			options[0] = "shotgun_armagedon";
			break;
			
			case "shotgun_auto_speed":
			options[0] = "double_shotgun";
			break;
			
			case "shotgun_longbarrel_accuracy":
			options[0] = "shotgun_apocalypse";
			break;
			
			case "shotgun_longbarrel_damage":
			options[0] = "mini_cannon";
			break;
		}
		options[1] = "draza";
		break;
	}
	
	return options;
}