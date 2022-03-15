/// @description testing
if(instance_exists(gun)) {
	draw_text(50, 20, gun.name);
	draw_sprite_ext(gun.sprite, 0, 100, 80, 5, 5, 0, c_white, 1);
}
