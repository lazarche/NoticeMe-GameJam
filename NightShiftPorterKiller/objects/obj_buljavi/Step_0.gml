if(image_index > 5 && state == "walk") {
	spd_x = cos(degtorad(moving_direction)) * movespeed;
	spd_y = -sin(degtorad(moving_direction)) * movespeed;
	image_speed = 0.15;
	change_direction = true;
}else{
	image_speed = 0.2;
	spd_x = 0;
	spd_y = 0;
	if(change_direction) {
		change_direction = false;
		
		moving_direction = random_range(moving_direction-30, moving_direction+30)
	}
}



#region State 
if(can_shoot && !collision_line(x,y, obj_player.x, obj_player.y, obj_solid, false, true))
	state = "shoot";
	else
	state = "walk";
#endregion

if(state == "shoot"){ 
	var proj = instance_create_layer(x, y-15, "Instances", obj_enemy_projectile);
	proj.sprite_index = choose(spr_buljavi_projectile, spr_buljavi_projectile2);
	proj.image_speed = 0.2;
	with(proj) {
		image_angle = point_direction(x, y, obj_player.x, obj_player.y);
		move_towards_point(obj_player.x, obj_player.y , 2);
	}
	can_shoot = false;
	alarm[0] = random_range(50,70);
	
}



#region Collision
//Horizontal collision
if(place_meeting(x + spd_x, y, obj_solid))
{

    while(!place_meeting(x + sign(spd_x), y, obj_solid))
    {
        x += sign(spd_x);
    }
    spd_x = 0;
	moving_direction = -moving_direction;
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
	moving_direction = -moving_direction;
}

y += spd_y;
y = round(y);


#endregion


#region Animation

switch(state) {

	
}

#endregion