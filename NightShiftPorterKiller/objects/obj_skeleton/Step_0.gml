// Inherit the parent event
event_inherited();

//Get path
path = get_path_to(obj_player.x, obj_player.y);
dist = distance_to_object(obj_player);
player_visible = collision_line(x, y ,obj_player.x, obj_player.y, obj_solid, 1, 1)

if(state != "die")
switch(state)
{
	case "walk":
	case "idle":
	if(dist < range_see && !player_visible)
		target = obj_player;

	if(target != noone)
		path_start(path, movespeed, path_action_stop, false);

	//Stop
	if(dist < range_stop && !player_visible) {
		path_end();
		state = "hit";
	}
	
	break;
	
	case "hit":
	//Udara
		show_debug_message("Udara");
	//Kraj
	if(image_index == sprite_get_number(spr_hit)-1)
		state = "walk";
	
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
	
	case "idle":
		sprite_index = spr_idle;
	break;
	
	case "hit":
		image_speed = 0.2;
		sprite_index = spr_hit;
	break;
	
	case "die":
		sprite_index = spr_die;
	break
	
}

#endregion




if(hp < 0) {
	hp = 0;
	state = "die"
}

if(state == "die" && image_index == sprite_get_number(spr_die)-1 && sprite_index == spr_die) 
	instance_destroy();




depth = -bbox_bottom;