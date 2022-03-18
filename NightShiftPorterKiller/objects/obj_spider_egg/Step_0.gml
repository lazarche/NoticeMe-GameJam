/// @description Hatching

if(distance_to_object(obj_player) < range) {
	if(!hatch)
		alarm[0] = time;
	
	hatch = true;	
}