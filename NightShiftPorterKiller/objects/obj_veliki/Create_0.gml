/// @description Initializing 

//Movement
movespeed = 1;
movespeed_max = 2;

moving_direction = 0;
change_direction = false;



//Components
spd_x = 0; //horizontal component
spd_y = 0; //vertical component

//Sprites
spr_shoot = spr_veliki_shoot;
spr_walk = spr_veliki_walk;
spr_die = spr_veliki_death;



//Other
image_speed = 0.25;
state = "walk";

can_shoot = can_shoot;
alarm[0] = 70;

image_xscale = 1.2;
image_yscale = 1.2;


hp = 200;

event_inherited();