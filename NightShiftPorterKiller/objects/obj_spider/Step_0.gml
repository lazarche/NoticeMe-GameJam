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
	} else {
		
		var spd_x;
		var spd_y;
		
		if(random(20) > 18) {
			moving_direction = random_range(0,360);
			intensity = random_range(0.2, 0.5);	
		}
			
		spd_x = cos(degtorad(moving_direction)) * intensity * movespeed;
		spd_y = -sin(degtorad(moving_direction)) * intensity * movespeed;
		
		#region Collision
//Horizontal collision

if(place_meeting(x + spd_x, y, obj_solid))
{
	var temp = 0;
    while(!place_meeting(x + sign(spd_x), y, obj_solid))
    {
        x += sign(spd_x);
		temp++;
		if(temp > spd_x)
			break;
		
    }
    spd_x = 0;
	
}

x += spd_x;
x = round(x);

//Vertical collision
if(place_meeting(x, y + spd_y, obj_solid))
{
	var temp = 0;
    while(!place_meeting(x, y + sign(spd_y), obj_solid))
    {
        y += sign(spd_y);
		temp++;
		if(temp > spd_y)
			break;
    }
    spd_y = 0;
}

y += spd_y;
y = round(y);
#endregion
	
		
	}
	break;
	
	case "walk":
	if(target != noone) {
		path_start(path, movespeed, path_action_stop, false);
	}

	//Stop
	if(dist < range_stop && !player_visible) {
		path_end();
		state = "hit";
	}
	
	break;
	
	case "hit":	
	//Udara

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
	audio_sound_pitch(snd_bat_die, random_range(0.85,1.05));
	play_sound(snd_spider_die);
}



if(state == "die" && round(image_index) == sprite_get_number(spr_die)-1){
	
	instance_destroy();
}



depth = -bbox_bottom;