
gornja = instance_create_layer(x+8, y+8, "Instances", obj_door_part);
gornja.sprite_index = spr_gate_up;
	
donja = instance_create_layer(x+8, y+120, "Instances", obj_door_part);
donja.sprite_index = spr_gate_down;
	
light_bulb = instance_create_layer(x+8, y+64, "Instances", obj_light);
light_bulb.size = 150;
light_bulb.colorr = make_colour_hsv(43, 51, 50);
// target make_colour_hsv(43, 51, 255);;



max_radius = 300;
cur_radius = 150;

max_b = 255;
cur_b = 50;

opening_dur_max = 120
opening_dur_cur = 0;
finish = false;