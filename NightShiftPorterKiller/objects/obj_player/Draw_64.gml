/// @description testing
if(instance_exists(gun)) {
	draw_text(50, 20, gun.name);
	draw_sprite_ext(gun.sprite, 0, 100, 80, 5, 5, 0, c_white, 1);
}

var offset = 0;
repeat(hp) {
	draw_sprite(spr_ui_heart, 0, 900+offset, 50)	
	offset += 32+hp_offset;
}