event_inherited();

spr_walk = spr_zombie_walk;
spr_hit = spr_zombie_hit;
spr_die = spr_zombie_die;
spr_idle = spr_zombie_idle;

movespeed = 2.2;
movespeed_max = 2;

moving_dir = 0;
intensity = 0.3;

looking_direction = 0;
player_visible = false;
range_stop = 0
range_see = 250;

target = noone;

hp = 90;

path = 0;

image_speed = 0.35;

state = "idle";

can_shoot = true;

