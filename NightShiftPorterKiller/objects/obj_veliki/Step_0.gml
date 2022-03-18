event_inherited();

if(can_shoot && !collision_line(x, y, obj_player.x, obj_player.y, obj_solid, false, true) && state != "die") 
state = "shoot";


switch state {
	
	case "shoot":
	if(can_shoot && (round(image_index) == 12)) {
		var smer = point_direction(x, y, obj_player.x, obj_player.y);
		repeat(5) {
			var proj = instance_create_layer(x+26, y-49, "Instances", obj_enemy_projectile);
			proj.sprite_index = choose(spr_veliki_projectile1, spr_veliki_projectile2);
			proj.image_speed = 0.3;
			proj.image_angle = point_direction(x, y, obj_player.x, obj_player.y);
			proj.speed = 5;
			proj.direction = smer+random_range(-25,25);
		}
		
		can_shoot = false;
		alarm[0] = random_range(120,130);
		
	}
	if(round(image_index) == sprite_get_number(spr_shoot)-1)
		state = "walk";
		
	case "walk":
	spd_x = cos(degtorad(moving_direction)) * movespeed;
	spd_y = -sin(degtorad(moving_direction)) * movespeed;

	break;
	
	case "die":
	spd_x = 0;
	spd_y = 0;
	if (round(image_index) == sprite_get_number(spr_die)-1)
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