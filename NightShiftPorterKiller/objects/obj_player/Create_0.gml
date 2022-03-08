/// @description Initializing 

//Movement
movespeed = 3;
movespeed_max = 3;
moving_direction = 0;
intensity = 0;
//Components
spd_x = 0; //horizontal component
spd_y = 0; //vertical component


looking_direction = 0;

inst_nearest = instance_nearest_visible(x, y, obj_enemy) //target

//Sprites
spr_idle = spr_player_idle;
spr_walk = spr_player_walk;

//Other
controller_id = getFirstController();
image_speed = 0.2;
state = "idle";
scale = 2;

image_xscale = scale;
image_yscale = scale;

//Camera
camera = instance_create_layer(x, y, "Instances", obj_camera);

//Gun
gun = instance_create_layer(x, y, "Instances", obj_weapon);
gun.idd = "rifle";
gun.carrier = self;

global.bullets = 0;