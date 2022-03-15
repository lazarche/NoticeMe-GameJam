function draw_shadow(argument0) {
	var _object = argument0;

	draw_set_color(c_black);
	draw_set_alpha(0.4);
	draw_ellipse(x - _object.sprite_width/3, y + _object.sprite_height / 2-3, x + _object.sprite_width/3, y + _object.sprite_height / 2+3, false);
	draw_set_alpha(1);

}
