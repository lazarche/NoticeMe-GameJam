#region Input
var lhaxis = gamepad_axis_value(controller_id, gp_axislh);
var lvaxis = gamepad_axis_value(controller_id, gp_axislv);

intensity = min(1, point_distance(0 ,0, lhaxis, lvaxis));
moving_direction = point_direction(0, 0, lhaxis, lvaxis);

#endregion

#region Movement

spd_x = cos(degtorad(moving_direction)) * intensity * movespeed;
spd_y = -sin(degtorad(moving_direction)) * intensity * movespeed;

#endregion

#region State
if(state != "stun")
	if(spd_x != 0 || spd_y != 0)
		state = "walk";
		else if(spd_x == 0 || spd_y == 0)
		state = "idle";

switch(state) {
	case "stun":
	spd_x = 0;
	spd_y = 0;
	break;
}
	

#endregion

#region Pucanje
if(gamepad_button_check(controller_id, gp_shoulderr)){
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
    while(!place_meeting(x + sign(spd_x), y, obj_solid))
    {
        x += sign(spd_x);
    }
    spd_x = 0;
}

x += spd_x;
x = round(x);

//Vertical collision
if(place_meeting(x, y + spd_y, obj_solid))
{
    while(!place_meeting(x, y + sign(spd_y), obj_solid))
    {
        y += sign(spd_y);
    }
    spd_y = 0;
}

y += spd_y;
y = round(y);
#endregion

#region Looking directions
if(instance_exists(obj_enemy)){
	if(gun.shoot == 0 && inst_nearest != noone)
		inst_nearest = instance_nearest_visible(x, y, obj_enemy) //instance_nearest(x,y, obj_enemy);
		
	var looking_finish = point_direction(x,y, inst_nearest.x, inst_nearest.y)
	var _diff = angle_difference(looking_finish, looking_direction)
	looking_direction += _diff * 0.2; 
	
	}else{
		if(sign(spd_x) > 0)
			looking_direction = 0;
			else if(sign(spd_x) != 0)
			looking_direction = 180;	
	}
		
if(abs(angle_difference(0,looking_direction)) > 90)
	image_xscale = -scale;
	else 
	image_xscale = scale;

#endregion

#region Animation

switch(state){
	case "idle":
		sprite_index = spr_idle;
		image_speed = 0.14;
	break;
	
	case "walk":
		sprite_index = spr_walk;
		image_speed = 0.22*intensity;
	break;
	
}
	

#endregion

//Check for controller
if(controller_id == 0)
	controller_id = getFirstController();