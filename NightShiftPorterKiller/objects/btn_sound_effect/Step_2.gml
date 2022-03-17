
if((focused && control && gamepad_button_check_pressed(controller_id, gp_face4)))
{
	clicked = true;
	alarm[1] = 7;
}

if(global.sound_effects)
	sprite_index = spr_btn_sound_effect;
	else
	sprite_index = spr_btn_sound_effect_off;
	
	
function OnClick() {
	global.sound_effects = !global.sound_effects;
}