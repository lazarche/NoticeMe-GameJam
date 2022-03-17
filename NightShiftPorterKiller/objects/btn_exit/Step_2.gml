/// @description Insert description here
// You can write your code in this editor
if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	clicked = true;
	alarm[1] = 7;
}

function OnClick() {
	game_end()
}