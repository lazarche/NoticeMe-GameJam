#region Input

var lhaxis = gamepad_axis_value(controller_id, gp_axislh);
var lvaxis = gamepad_axis_value(controller_id, gp_axislv);

//Keyboard
if(keyboard_check(ord("W")))
	var lvaxis = -1;
	else if(keyboard_check(ord("S")))
	var lvaxis = 1;

if(keyboard_check(ord("A")))
	var lhaxis = -1;
	else if(keyboard_check(ord("D")))
	var lhaxis = 1;



intensity = min(1, point_distance(0 ,0, lhaxis, lvaxis));
moving_direction = point_direction(0, 0, lhaxis, lvaxis);

#endregion

#region Movement

spd_x = cos(degtorad(moving_direction)) * intensity * movespeed;
spd_y = -sin(degtorad(moving_direction)) * intensity * movespeed;

#endregion

#region State
if(state != "stun")
	if(spd_x != 0 || spd_y != 0){
		if(intensity <0.95)
			state = "walk";
			else
			state = "run";
		
	}else if(spd_x == 0 || spd_y == 0)
		state = "idle";

switch(state) {
	case "stun":
	spd_x = 0;
	spd_y = 0;
	break;
}
	

#endregion

#region Pucanje
if((gamepad_button_check(controller_id, attack_button) || keyboard_check(ord("K"))) && !obj_level_up.lvl_screen){
	gun.shoot = 1;
	spd_x = spd_x/2;
	spd_y = spd_y/2;
}
else
gun.shoot = 0;

#endregion

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

#region Looking directions
if(instance_exists(obj_enemy)){
	if(gun.shoot == 0 && inst_nearest != noone)
		inst_nearest = instance_nearest_visible(x, y, obj_enemy)//instance_nearest(x,y, obj_enemy);
		else if(gun.shoot == 1  && inst_nearest != noone)
			if(inst_nearest.state == "die")
				inst_nearest = instance_nearest_visible(x, y, obj_enemy)
		
		if(instance_exists(inst_nearest)){
			var looking_finish = point_direction(x,y, inst_nearest.x, inst_nearest.y)
			var _diff = angle_difference(looking_finish, looking_direction)
			looking_direction += _diff * 0.2; 
		} else {
			if(sign(spd_x) > 0)
			looking_direction = 0;
			else if(sign(spd_x) != 0)
			looking_direction = 180;
		}
		
	}else{
		if(sign(spd_x) > 0)
			looking_direction = 0;
			else if(sign(spd_x) != 0)
			looking_direction = 180;	
	}
		
if(abs(angle_difference(0,looking_direction)) > 90){
	image_speed = image_speed * -1;
	image_xscale = -scale;
}else{ 
	image_speed = image_speed * -1;
	image_xscale = scale;
}
#endregion

#region Animation

switch(state){
	case "idle":
		sprite_index = spr_idle;
		image_speed = 0.14;
	break;
	
	case "walk":
		sprite_index = spr_walk;
		image_speed = 0.5*intensity;
	break;
	
	case "run":
		sprite_index = spr_run;
		image_speed = 0.29;
	
}

	

#endregion

//Check for controller
if(controller_id == 0)
	controller_id = getFirstController();
	

//Test
if(gamepad_button_check_pressed(controller_id, gp_shoulderlb) && !obj_level_up.lvl_screen)
	if(level < 7){
		level++;
		obj_level_up.lvl_screen = true;
	}

