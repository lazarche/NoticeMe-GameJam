function draw_shadow(argument0) {
	var _object = argument0;

	draw_set_color(c_black);
	draw_set_alpha(0.4);
	draw_ellipse(x - _object.sprite_width/4, y + _object.sprite_height / 2-3, x + _object.sprite_width/4, y + _object.sprite_height / 2+3, false);
	draw_set_alpha(1);

}

function draw_shadow_height(argument0, height) {
	var _object = argument0;

	draw_set_color(c_black);
	draw_set_alpha(0.4);
	draw_ellipse(x - _object.sprite_width/4, y + _object.sprite_height / 2-3 + height, x + _object.sprite_width/4, y + _object.sprite_height / 2+3 + height, false);
	draw_set_alpha(1);

}

function draw_health(height) {
	draw_set_color(c_red)
	var sirina = sprite_width
	if(sprite_width < 0)
		sirina = abs(sprite_width);
	
	var startx = x-sirina/2;
	var progres = startx + (sirina * (hp/max_hp))
	
	
	if(state != "die" && hp != max_hp)
		draw_rectangle(startx, y+sprite_height/2 + height + 2, progres, y + sprite_height/2 + height + 6, false);
}