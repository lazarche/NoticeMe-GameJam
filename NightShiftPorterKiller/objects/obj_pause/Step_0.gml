/// @description Insert description here
// You can write your code in this editor
if room != rm_menu && room != rm_init
{
if(instance_exists(obj_player))
	if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(obj_player.controller_id, gp_start)
	    {
	    paused = !paused;
	    if paused == false
	        {
	        instance_activate_all();
	        surface_free(paused_surf);
	                paused_surf = -1;
	        }
	    }
if paused == true
    {
    alarm[0]++;
    alarm[1]++;
    }
}