/// @description Lightining and exit
light_draw_circle(x, y, 200, c_white, 1);

if(you_died_alpha > 1 && (gamepad_button_check_pressed(controller_id, attack_button) || keyboard_check_pressed(vk_escape)))
	room_goto(rm_menu);