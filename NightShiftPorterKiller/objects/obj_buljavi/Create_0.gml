/// @description Initializing 

//Movement
movespeed = 2;
movespeed_max = 2;

moving_direction = random(360);
change_direction = false;

attack_range = 600;


//Components
spd_x = 0; //horizontal component
spd_y = 0; //vertical component

//Sprites
spr_shoot = spr_buljavi_shoot;
spr_walk = spr_buljavi_run;
spr_die = spr_buljavi_death;


//Other
image_speed = 0.5;
state = "Z";

can_shoot = false;
alarm[0] = 70;

image_xscale = 1.2;
image_yscale = 1.2;


hp = 175;

event_inherited();