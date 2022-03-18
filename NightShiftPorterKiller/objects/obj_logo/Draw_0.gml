/// @description Insert description here
// You can write your code in this editor
if(shake)
	draw_sprite_ext(sprite_index, 0, x+random_range(-5,5), y+random_range(-2,2), 2, 2, 0, c_white, 1);
else
	draw_self();