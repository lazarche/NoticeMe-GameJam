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


if(state != "die" && !inst_level.lvl_screen) {
	intensity = min(1, point_distance(0 ,0, lhaxis, lvaxis));
	moving_direction = point_direction(0, 0, lhaxis, lvaxis);
} else {
	intensity = 0;
	moving_direction = 1;
}


#endregion

#region Movement

spd_x = cos(degtorad(moving_direction)) * intensity * movespeed;
spd_y = -sin(degtorad(moving_direction)) * intensity * movespeed;

#endregion

#region State
if(state != "die")
	if(spd_x != 0 || spd_y != 0){
		if(intensity <0.95)
			state = "walk";
			else
			state = "run";
		
	}else if(spd_x == 0 || spd_y == 0)
		state = "idle";
	

#endregion

#region Pucanje
if((gamepad_button_check(controller_id, attack_button) || keyboard_check(ord("K"))) && state != "die" && !obj_level_up.lvl_screen){
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


distance_step += abs(spd_x) + abs(spd_y);

if(distance_step > 45) {
	
	audio_sound_pitch(snd_player_step1, random_range(0.9,1));
	audio_sound_pitch(snd_player_step2, random_range(0.9,1));
	if(step)
		play_sound(snd_player_step1);
	else
		play_sound(snd_player_step2);
		
	audio_sound_gain(snd_player_step1,0.08,0);
	audio_sound_gain(snd_player_step2,0.08,0)
	distance_step = 0;
	step = !step;
}


#endregion

#region Looking directions
if(instance_exists(obj_enemy) && state != "die"){
	inst_nearest = instance_nearest_visible(x, y, obj_enemy);
	if(inst_nearest != noone) {
		if(instance_exists(inst_nearest)){
			var looking_finish = point_direction(x,y, inst_nearest.x, inst_nearest.y)
			var _diff = angle_difference(looking_finish, looking_direction)
			looking_direction += _diff * 0.2; 
			} 	
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
		image_speed = 0.35;
	break;
		
	case "die":
	gun.visible = false;

	if(gui_alpha > 0) 
		gui_alpha -= 0.014;
	
	with(obj_enemy)
		target=noone;
	
		if(sprite_index != spr_die) {
			sprite_index = spr_die;
			//Play death sound
		}
		
		if(round(image_index) == sprite_get_number(spr_die)-1)
			image_speed = 0;
		else 
			image_speed = 0.15;
			
		
	break;
}

	

#endregion

//Check for controller
if(controller_id == 0)
	controller_id = getFirstController();
	
	
#region Blink Animation on Hit 

if(hitted) {
	imune_cur++;
	if(imune_cur == imune_dur) {
		hitted = false;
		imune_cur = 0;
		blink_slow = 4;
	}
}

#endregion

