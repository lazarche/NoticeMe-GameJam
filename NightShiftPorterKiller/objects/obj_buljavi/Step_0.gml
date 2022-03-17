event_inherited();

switch state {
	case "walk":
	if(image_index > 5) {
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
			var rng_dir = choose(-1,1)
			var pom = 2;
			var start = moving_direction;
			while(place_meeting(x+lengthdir_x(60, moving_direction), y+lengthdir_y(60,moving_direction), obj_solid)) {
				moving_direction += pom*rng_dir;
				if(angle_difference(start, moving_direction) < (pom * rng_dir)) {
					//pom = floor(pom/2);	
				}
			}
		}
		
		if(can_shoot && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true) && round(image_index) == 0) {
			state = "shoot";
		}
	}
	break;
	
	
	case "shoot":
	image_speed = 0.3;
	if(round(image_index) == 3 && can_shoot) {
		var smer = point_direction(x, y, obj_player.x, obj_player.y);
		var pom = 0;
		repeat(2) {
			var proj = instance_create_layer(x+(pom*2), y-15+(pom*2), "Instances", obj_enemy_projectile);
			proj.sprite_index = choose(spr_buljavi_projectile, spr_buljavi_projectile2);
			proj.image_speed = 0.3;
			proj.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
			proj.speed = 3;
			proj.direction = smer+pom;
			pom = choose(-2,2);
		}
		
		can_shoot = false;
		alarm[0] = random_range(70,100);
		
	} else if (round(image_index) == sprite_get_number(spr_shoot)-1) {
		state = "walk";
	}
	break;
	
	case "die":
	spd_x = 0;
	spd_y = 0;
	if (round(image_index) == sprite_get_number(spr_shoot)-1)
		instance_destroy();

}


//Die
if(hp <= 0) {
	hp = 0;
	state = "die"
}

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


#region Animation

switch(state) {
	case "walk":
		sprite_index = spr_walk;
	break;
	case "shoot":
		sprite_index = spr_shoot;
	break;
	case "die":
		if(sprite_index != spr_die)
			image_index = 0;
		sprite_index =  spr_die;
	break;
}
	

#endregion