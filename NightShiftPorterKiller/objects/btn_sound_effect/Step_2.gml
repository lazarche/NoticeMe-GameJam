
if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	OnClick()
}
if(global.sound_effects)
	image_index = 0;
	else
	image_index = 1;
	
function OnClick() {
	global.sound_effects = !global.sound_effects;
}