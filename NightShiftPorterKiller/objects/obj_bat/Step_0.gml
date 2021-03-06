// Inherit the parent event
event_inherited();

//Get path
path = get_path_to(obj_player.x, obj_player.y);
dist = round(distance_to_object(obj_player));
player_visible = collision_line(x, y ,obj_player.x, obj_player.y, obj_solid, 1, 1)

if(state != "die")
switch(state)
{
	case "idle":
	
	if(dist < range_see && !player_visible) {
		target = obj_player;
		state = "walk";	
	}
	break;
	
	case "walk":
	if(target != noone) {
		path_start(path, movespeed, path_action_stop, false);
	}

	//Stop
	if(dist < range_stop && !player_visible && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true)) {
		path_end();

		if(can_shoot)
			state = "hit";
	}
	
	break;
	
	case "hit":
	
	//Udara
	if(can_shoot){
		var smer = point_direction(x, y, obj_player.x, obj_player.y);
		var proj = get_bullet_at_player(3) //instance_create_layer(x, y, "Instances", obj_enemy_projectile);
		if(proj != noone) {
			proj.sprite_index = spr_bat_projectile;
			proj.image_speed = 0.3;
			proj.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
			//proj.speed = 3;
			//proj.direction = smer;
		
			can_shoot = false;
			alarm[0] = choose(60,90);
		}
		
	}
	//Kraj
	if(round(image_index) == sprite_get_number(spr_hit)-1) {
		state = "walk";
	}
	break;
	
}


#region Looking direction
if(!player_visible)
	looking_direction = point_direction(x, y, obj_player.x, obj_player.y);
else
	looking_direction = direction;

if(looking_direction > 90 && looking_direction < 270)
	image_xscale = -1;
	else 
	image_xscale = 1;

#endregion



#region Animation 

switch(state) {
	case "walk":
		sprite_index = spr_walk;
	break;
	
	
	case "hit":
		image_speed = 0.15;
		sprite_index = spr_hit;
	break;
	
	case "die":
		image_speed = 0.19;
		if(sprite_index != spr_die) {
			image_index = 0;
		}
		sprite_index = spr_die;
	break;
	
	case "waking":
		sprite_index = spr_waking;
	break;
		
	case "arming":
		sprite_index = spr_arming;
	break;
	
}

#endregion

if(hp < 0) {
	hp = 0;
	state = "die"
	path_end();
	speed = 0;
	audio_sound_pitch(snd_bat_die, random_range(0.9,1.05));
	play_sound(snd_bat_die);
}



if(state == "die" && round(image_index) == sprite_get_number(spr_die)-1){
	
	instance_destroy();
}



depth = -bbox_bottom;