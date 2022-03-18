/// @description Pick up
if(obj_player.hp < 5) {
	obj_player.hp++;
	global.hp++;
	instance_destroy();
}