event_inherited();



spr_walk = spr_bat_move;
spr_hit = spr_bat_hit;
spr_die = spr_bat_die;

spr_waking = spr_skeleton_waking;
spr_arming = spr_skeleton_arming;

movespeed = 3;
movespeed_max = 3;

looking_direction = 0;
player_visible = false;
range_stop = random_range(200,400);
range_see = range_stop+50;

target = noone;


path = 0;

image_speed = 0.2;

state = "idle";

can_shoot = true;