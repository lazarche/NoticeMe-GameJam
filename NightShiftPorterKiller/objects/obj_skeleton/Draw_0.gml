/// @description Insert description here
// You can write your code in this editor
draw_shadow_height(self, -64);
if(colliding_bullet != noone){
	shader_set(shd_hit);
	draw_self();
	shader_reset();
}else
	draw_self();
	
	
