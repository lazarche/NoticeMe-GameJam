/// @description Initializing 
//Movement
movespeed = 4;
movespeed_max = 3;
moving_direction = 0;
intensity = 0;
looking_direction = 0;


distance_step = 10;
step = true;

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
state = "pistol_speed";
scale = 1;

image_xscale = scale;
image_yscale = scale;

//Camera
camera = instance_create_layer(x, y, "Instances", obj_camera);

//Gun
gun = instance_create_layer(x, y, "Instances", obj_weapon);
gun.idd = global.weapon_id;
gun.carrier = self;

//Hp
hitted = false;
imune_dur = 90;
imune_cur = 0;
blink_slow = 5;
blink_count = 0;
hp = global.hp;
hp_offset = 16;

//die
gui_alpha = 1;
death_screen_alpha = 0;
you_died_alpha = 0;