/// @description UI

draw_set_alpha(gui_alpha);

#region Gun Draw
if(instance_exists(gun)) {
	draw_set_color(c_white);
	draw_set_font(fnt_weapon_name)
	
	var xx = 130;
	var yy = display_get_gui_height()-160;
	
	var text_xx = xx - string_width(gun.name)/2;
	if(xx -  string_width(gun.name)/2 < 16)
		text_xx = 16;
	
	draw_text(text_xx, yy, gun.name);
		
	draw_set_font(-1)
	
	//Draw gun
	yy += 100;
	
		var temp = gun.sprite_index;
		var offset_x = sprite_get_xoffset(temp);
		var offset_y = sprite_get_yoffset(temp);
	
		var fix_x = 64-offset_x;
		var fix_y = 64-offset_y;
	
		var tempx = sprite_get_xoffset(gun.sprite);
		var tempy = sprite_get_yoffset(gun.sprite);
		
		var centerx = sprite_get_width(gun.sprite)/2 - tempx;
		var centery = sprite_get_height(gun.sprite)/2 - tempy;
		
	
	draw_sprite_ext(gun.sprite, 0, xx +centerx - fix_x, yy + centery +fix_y, 7, 7, 0, c_white, gui_alpha);
	//draw_circle(display_get_gui_width()-200, display_get_gui_height()-80, 2, false)
}

#endregion

#region HP
var offset = 0;
repeat(hp) {
	draw_sprite(spr_ui_heart, 0, 26+offset, 26)	
	offset += 32+hp_offset;
}
repeat(5-hp) {
	draw_sprite(spr_ui_heart, 1, 26+offset, 26)	
	offset += 32+hp_offset;
}
#endregion

#region Highscore
draw_sprite(spr_ui_highscore, 0, display_get_gui_width()-192, 8);
draw_set_font(fnt_highscore)

var base = 10;
var highscore = string(global.highscore);
repeat(7) {
	if (floor(global.highscore / base) == 0) {
		highscore = "0" + highscore;
		
	}
	base = base * 10;
}
draw_set_color(c_white);
draw_text(display_get_gui_width()-183, 16, highscore);

#endregion

//Die


if(state == "die" && gui_alpha < 0.1){
	death_screen_alpha+= 0.01;
	draw_set_alpha(death_screen_alpha);
	draw_set_color($1c1b1c);
	draw_rectangle(-5,-5,2000,2000,false);
	
	with(obj_enemy) {
		image_alpha = 1-other.death_screen_alpha;	
	}

}

if(death_screen_alpha > 1) {
	you_died_alpha += 0.08;
	draw_set_alpha(you_died_alpha)
	draw_set_font(fnt_die);
	draw_set_color($323481);
	draw_text(display_get_gui_width()/2-string_width("YOU DIED")/2, display_get_gui_height()/2-string_height("YOU DIED")/2, "YOU DIED");
	
}



draw_set_color(-1)
draw_set_font(-1);
draw_set_alpha(1);


draw_sprite_ext(spr_ui_border, 0, 0, 0, 1, 1,  0, c_white, 1);
