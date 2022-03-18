/// @description Draw


function DrawWeaponCard(xx , yy, selected, gun_id) {
	
	var ind = 0;
	if(selected)
		ind = 1;
	
	draw_sprite(spr_ui_weapon_card, ind, xx, yy);
	draw_set_font(fnt_weapon_card_title)
	var titlex = xx + sprite_get_width(spr_ui_weapon_card)/2 - string_width(GetItemProperty(gun_id, "name"))/2;
	var titley = yy + 25;
	draw_set_color(c_white);
	draw_text(titlex, titley, GetItemProperty(gun_id, "name"));
	draw_set_font(-1);
	//Slika
	var picx = xx + sprite_get_width(spr_ui_weapon_card)/2;
	var picy = titley + 200;
	
	var temp = GetItemProperty(gun_id, "sprite");
	var offset_x = sprite_get_xoffset(temp);
	var offset_y = sprite_get_yoffset(temp);
	
	var fix_x = 64-offset_x;
	var fix_y = 64-offset_y;
	
	var spr_width = sprite_get_width(temp);
	var spr_height = sprite_get_height(temp);
	
	draw_sprite_ext(temp, 0, picx - spr_width/2 + fix_x, picy - spr_height/2 + fix_y, 7, 7, 0, c_white, 1)
	
	//Stats
	draw_set_color(c_white);
	draw_set_font(fnt_weapon_card_stats)
	var statx = xx + sprite_get_width(spr_ui_weapon_card)/2;
	var staty = 330;
	
	//draw_circle(statx, staty, 2, false);
	var var_firerate = "Damage: " + string(GetItemProperty(gun_id, "damage")) + " DMG"
	draw_text(statx - string_width(var_firerate)/2, staty,var_firerate);
	staty += 45;
	var var_firerate = "Firerate: " + string(GetItemProperty(gun_id, "firerate")) + " RPM"
	draw_text(statx - string_width(var_firerate)/2, staty,var_firerate);
	staty += 45;
	var var_firerate = "Accuracy: " + string(GetItemProperty(gun_id, "accuracy")) + " degree";
	draw_text(statx - string_width(var_firerate)/2, staty,var_firerate);
	staty += 45;
	var var_firerate = "Pierce: " + string(GetItemProperty(gun_id, "pierce")) + " enemies"
	draw_text(statx - string_width(var_firerate)/2, staty,var_firerate);
	staty += 45;
	var var_firerate = "Bullet Count: " + string(GetItemProperty(gun_id, "bulletCount")) + " bullets"
	draw_text(statx - string_width(var_firerate)/2, staty,var_firerate);
	staty += 45;
	
	//Bullet type
	var tp = "";
	switch(GetItemProperty(gun_id, "ammo")) {
		case spr_bullet_small:
			tp = "Small Caliber";
			break;
		case spr_bullet_medium:
			tp = "Medium Caliber";
			break;
		case spr_bullet_big:
			tp = "Big Caliber";
			break;
		case spr_bullet_pellet:
			tp = "Shotgun Pellet";
			break;
	}
		
	
	var var_firerate = "Bullet Type: " + string(tp);
	draw_text(statx - string_width(var_firerate)/2, staty,var_firerate);
	staty += 45;
	
	

}

//114
//DrawWeaponCard(50, 50, true, obj_player.gun.idd);
//DrawWeaponCard(100, 100, false, "shotgun_longbarrel");

if(lvl_screen_draw) {
if(second_option == "draza") {
	/*
	draw_set_color(c_green);
	draw_text(display_get_gui_width()/2, 100, GetItemProperty(first_option, "name"))
	draw_text(display_get_gui_width()/2, 130, string(GetItemProperty(first_option, "firerate")) + " Rounds per Minute" )
	draw_text(display_get_gui_width()/2, 160, string(GetItemProperty(first_option, "damage")) + " Damage per Round") 
	draw_text(display_get_gui_width()/2, 190, string(GetItemProperty(first_option, "accuracy")) + " Accuracy" )
	draw_text(display_get_gui_width()/2, 220, string(GetItemProperty(first_option, "pierce")) + " Pierce" )
	draw_text(display_get_gui_width()/2, 250, string(GetItemProperty(first_option, "bulletCount")) + " Bullet Count" )
	draw_sprite_ext( GetItemProperty(first_option, "sprite"), 0, display_get_gui_width()/2, 400, 5, 5, 0, c_white, 1)
	*/
	DrawWeaponCard(427, 100, false, first_option)
	
} else {

//first
selected_first = false;
if(selected_option == 1)
	selected_first = true;
	else
	selected_first = false;

/*
draw_text(100, 100, GetItemProperty(first_option, "name"))
draw_text(100, 130, string(GetItemProperty(first_option, "firerate")) + " Rounds per Minute" )
draw_text(100, 160, string(GetItemProperty(first_option, "damage")) + " Damage per Round") 
draw_text(100, 190, string(GetItemProperty(first_option, "accuracy")) + " Accuracy" )
draw_text(100, 220, string(GetItemProperty(first_option, "pierce")) + " Pierce" )
draw_text(100, 250, string(GetItemProperty(first_option, "bulletCount")) + " Bullet Count" )
draw_sprite_ext( GetItemProperty(first_option, "sprite"), 0, 100, 400, 5, 5, 0, c_white, 1)
*/

DrawWeaponCard(114, 100, selected_first, first_option)

//first
selected_second = false;
if(selected_option == 2 )
	selected_second = true;
	else
	selected_second = false;

/*
draw_text(700, 100, GetItemProperty(second_option, "name"))
draw_text(700, 130, string(GetItemProperty(second_option, "firerate")) + " Rounds per Minute" )
draw_text(700, 160, string(GetItemProperty(second_option, "damage")) + " Damage per Round") 
draw_text(700, 190, string(GetItemProperty(second_option, "accuracy")) + " Accuracy" )
draw_text(700, 220, string(GetItemProperty(second_option, "pierce")) + " Pierce" )
draw_text(700, 250, string(GetItemProperty(second_option, "bulletCount")) + " Bullet Count" )
draw_sprite_ext( GetItemProperty(second_option, "sprite"), 0, 700, 400, 5, 5, 0, c_white, 1)

*/

DrawWeaponCard(740, 100, selected_second, second_option)

draw_set_color(c_white);

}
}

