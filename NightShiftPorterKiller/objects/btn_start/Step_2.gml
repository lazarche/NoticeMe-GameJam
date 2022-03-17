if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	OnClick();
}

function OnClick() {
	room_goto_next();
}