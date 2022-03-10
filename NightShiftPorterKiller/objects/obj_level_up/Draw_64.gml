/// @description Draw
if(lvl_screen_draw) {



if(second_option == "draza") {
	draw_set_color(c_green);
	draw_text(display_get_gui_width()/2, 100, GetItemProperty(first_option, "name"))
	draw_text(display_get_gui_width()/2, 130, string(GetItemProperty(first_option, "firerate")) + " Rounds per Minute" )
	draw_text(display_get_gui_width()/2, 160, string(GetItemProperty(first_option, "damage")) + " Damage per Round") 
	draw_text(display_get_gui_width()/2, 190, string(GetItemProperty(first_option, "accuracy")) + " Accuracy" )
	draw_text(display_get_gui_width()/2, 220, string(GetItemProperty(first_option, "pierce")) + " Pierce" )
	draw_text(display_get_gui_width()/2, 250, string(GetItemProperty(first_option, "bulletCount")) + " Bullet Count" )
	draw_sprite_ext( GetItemProperty(first_option, "sprite"), 0, display_get_gui_width()/2, 400, 5, 5, 0, c_white, 1)
	
} else {

//first
if(selected_option == 1)
draw_set_color(c_green);
else
draw_set_color(c_gray);

draw_text(100, 100, GetItemProperty(first_option, "name"))
draw_text(100, 130, string(GetItemProperty(first_option, "firerate")) + " Rounds per Minute" )
draw_text(100, 160, string(GetItemProperty(first_option, "damage")) + " Damage per Round") 
draw_text(100, 190, string(GetItemProperty(first_option, "accuracy")) + " Accuracy" )
draw_text(100, 220, string(GetItemProperty(first_option, "pierce")) + " Pierce" )
draw_text(100, 250, string(GetItemProperty(first_option, "bulletCount")) + " Bullet Count" )
draw_sprite_ext( GetItemProperty(first_option, "sprite"), 0, 100, 400, 5, 5, 0, c_white, 1)


//first
if(selected_option == 2 )
draw_set_color(c_green);
else
draw_set_color(c_gray);

draw_text(700, 100, GetItemProperty(second_option, "name"))
draw_text(700, 130, string(GetItemProperty(second_option, "firerate")) + " Rounds per Minute" )
draw_text(700, 160, string(GetItemProperty(second_option, "damage")) + " Damage per Round") 
draw_text(700, 190, string(GetItemProperty(second_option, "accuracy")) + " Accuracy" )
draw_text(700, 220, string(GetItemProperty(second_option, "pierce")) + " Pierce" )
draw_text(700, 250, string(GetItemProperty(second_option, "bulletCount")) + " Bullet Count" )
draw_sprite_ext( GetItemProperty(second_option, "sprite"), 0, 700, 400, 5, 5, 0, c_white, 1)

draw_set_color(c_white);

}
}