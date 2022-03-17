/// @description UI

draw_set_alpha(gui_alpha);

#region Gun Draw
if(instance_exists(gun)) {
	if(120 - string_width(gun.name)/2) > 16
		draw_text(120 - string_width(gun.name)/2, display_get_gui_height()-140, gun.name);
		else 
		draw_text(0, display_get_gui_height()-140, gun.name);
			
		var tempx = sprite_get_xoffset(gun.sprite);
		var tempy = sprite_get_yoffset(gun.sprite);
		
		var centerx = sprite_get_width(gun.sprite)/2 - tempx;
		var centery = sprite_get_height(gun.sprite)/2 - tempy;
		
	
	draw_sprite_ext(gun.sprite, 0, 120 +0, display_get_gui_height()-80 +centery, 5, 5, 0, c_white, gui_alpha);
	//draw_circle(display_get_gui_width()-200, display_get_gui_height()-80, 2, false)
}

#endregion

#region HP
var offset = 0;
repeat(hp) {
	draw_sprite(spr_ui_heart, 0, 24+offset, 24)	
	offset += 32+hp_offset;
}
repeat(5-hp) {
	draw_sprite(spr_ui_heart, 1, 24+offset, 24)	
	offset += 32+hp_offset;
}
#endregion

#region Highscore
draw_sprite(spr_ui_highscore, 0, display_get_gui_width()-148, 8);
draw_set_font(fnt_highscore)

var base = 10;
var highscore = string(global.highscore);
repeat(6) {
	if (floor(global.highscore / base) == 0) {
		highscore = "0" + highscore;
		
	}
	base = base * 10;
}

draw_text(display_get_gui_width()-145, 12, highscore);

#endregion

//Die


if(state == "die" && gui_alpha < 0.1){
	death_screen_alpha+= 0.01;
	draw_set_alpha(death_screen_alpha);
	draw_rectangle(-5,-5,2000,2000,false);
	
	with(obj_enemy) {
		image_alpha = 1-other.death_screen_alpha;	
	}

}

if(death_screen_alpha > 1) {
	draw_set_font(fnt_die);
	draw_set_color($323481);
	draw_text(display_get_gui_width()/2-string_width("YOU DIED")/2, display_get_gui_height()/2-string_height("YOU DIED")/2, "YOU DIED");
	
}

draw_set_color(-1)
draw_set_font(-1);
draw_set_alpha(1);



