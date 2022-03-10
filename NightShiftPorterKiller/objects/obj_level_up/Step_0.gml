if(lvl_screen){
	var controller_id = obj_player.controller_id;
	var lhaxis = gamepad_axis_value(controller_id, gp_axislh);
	var options = LevelOptions();
	
	first_option = options[0];
	second_option = options[1];
	
	if(second_option == "draza")
		selected_option = 1;
	
	
	if(lhaxis > 0.75)
		selected_option = 2;
		else if(lhaxis < -0.75)
		selected_option = 1;
		
	if(selected_option != 0 && gamepad_button_check_pressed(obj_player.controller_id, obj_player.attack_button)) {
		if(selected_option == 1)
			obj_player.gun.idd = first_option;
			else
			obj_player.gun.idd = second_option;
		
		lvl_screen = false;
	}
		
	lvl_screen_draw = true;
}else{
	selected_option = 0;
	lvl_screen_draw = false;
}