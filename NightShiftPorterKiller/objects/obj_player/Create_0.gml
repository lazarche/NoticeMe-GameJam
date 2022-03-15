/// @description Initializing 

//Movement
movespeed = 3;
movespeed_max = 3;
moving_direction = 0;
intensity = 0;
looking_direction = 0;
//Components
spd_x = 0; //horizontal component
spd_y = 0; //vertical component

//Stats
level = 1;
xp = 0;
xp_tonext = 100;
inst_level = instance_create_layer(0, 0, "Instances", obj_level_up);


inst_nearest = instance_nearest_visible(x, y, obj_enemy) //target

//Sprites
spr_idle = spr_player_idle;
spr_walk = spr_player_walk;
spr_run = spr_player_run;
spr_die = spr_player_death;

//Controls
controller_id = getFirstController();
attack_button = gp_face4;

//Other
image_speed = 0.2;
state = "idle";
scale = 1;

image_xscale = scale;
image_yscale = scale;

//Camera
camera = instance_create_layer(x, y, "Instances", obj_camera);

//Gun
gun = instance_create_layer(x, y, "Instances", obj_weapon);
gun.idd = "pistol";
gun.carrier = self;

