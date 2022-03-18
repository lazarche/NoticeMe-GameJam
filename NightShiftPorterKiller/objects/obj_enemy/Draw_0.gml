/// @description Draw self & hit
draw_shadow(self);
draw_health(0);
if(colliding_bullet != noone){
	shader_set(shd_hit);
	draw_self();
	shader_reset();
}else
	draw_self();
	

