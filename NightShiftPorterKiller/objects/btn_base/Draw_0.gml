var width = 4
if(focused) {
	draw_set_color(c_orange)
	draw_rectangle(x-width, y-width, x+sprite_width + width, y + sprite_height + width, false);
	draw_set_color(-1);
}

draw_self();