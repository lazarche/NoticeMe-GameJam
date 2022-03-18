// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Other(){

}

function Approach(start, finish, step){
	if(start<finish)
		return min(start + step, finish);
		else
		return max(start - step, finish);
}

function instance_nearest_visible(xx, yy, inst) {
	var closest_enemy =  noone;//instance_nearest(xx, yy, inst);
	var closest_dist = 999999;
	with(inst) {
		if(!collision_line(x, y, xx, yy, obj_solid, false, true) && state != "die") {
			if(closest_dist > point_distance(x, y, xx, yy)) {
				closest_dist = point_distance(x, y, xx, yy);
				closest_enemy = self;
				//show_debug_message(point_distance(x, y, xx, yy))
			}
			
		}
	}
	show_debug_message("Najblizi: " + string(closest_enemy) + " " + string(closest_dist));
	return closest_enemy;
}