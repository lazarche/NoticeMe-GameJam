if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	clicked = true;
	alarm[1] = 7;
}

function OnClick() {
	room_goto_next();
}