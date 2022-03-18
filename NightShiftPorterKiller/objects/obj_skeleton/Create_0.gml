event_inherited();


spr_idle = spr_skeleton_idle;
spr_walk = spr_skeleton_run;
spr_hit = spr_skeleton_hit;
spr_die = spr_skeleton_die;

spr_waking = spr_skeleton_waking;
spr_arming = spr_skeleton_arming;

movespeed = 3;
movespeed_max = 3;

looking_direction = 0;
player_visible = false;
range_stop = 1;
range_see = 600;

target = noone;

hp = 250;

path = 0;

image_speed = 0.2;

state = "waking";