/// @description Ciscenje nivoa
if(!instance_exists(obj_enemy) && !instance_exists(obj_enemy_projectile)){	
	if(!finish){
		alarm[0] = opening_dur_max+60;
		obj_camera.target = self;
	}
	finish = true;
}
if(finish) {
	if(opening_dur_cur > -opening_dur_max)
		opening_dur_cur--;	
		
	
	light_bulb.size = cur_radius + (max_radius-cur_radius)*(-(opening_dur_cur/opening_dur_max));
	light_bulb.colorr = make_colour_hsv(43, 51, cur_b + (max_b-cur_b)*(-(opening_dur_cur/opening_dur_max)));
	gornja.image_angle = -90 * (opening_dur_cur/opening_dur_max);
	donja.image_angle = 90 * (opening_dur_cur/opening_dur_max);
}