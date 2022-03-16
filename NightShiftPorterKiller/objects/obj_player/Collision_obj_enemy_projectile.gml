/// @description Insert description here
// You can write your code in this editor
if(!hitted) {	
	hitted = true;
	hp -= 1;
	with(other)
		instance_destroy();
}