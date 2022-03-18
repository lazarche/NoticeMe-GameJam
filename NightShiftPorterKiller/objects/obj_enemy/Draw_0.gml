/// @description Draw self & hit
draw_shadow(self);
if(colliding_bullet != noone){
	shader_set(shd_hit);
	draw_self();
	shader_reset();
}else
	draw_self();
	

draw_text(x, y, "Hp: " + string(hp));