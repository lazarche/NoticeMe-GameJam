/// @description Collision with enemy bullet
if(!hitted && hp == 0) {	
	hitted = true;
	hp -= 1;
	with(other)
		instance_destroy();
}