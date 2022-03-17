/// @description Insert description here
// You can write your code in this editor
if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	OnClick()
}

function OnClick() {
	game_end()
}