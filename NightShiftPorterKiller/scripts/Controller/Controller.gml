// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Controller(){

}

function getControllers() {
var gp_num = gamepad_get_device_count();
var devices = [];
var n = 0;
for (var i = 0; i < gp_num; i++;)
{
    if (gamepad_is_connected(i)) {
		gamepad_set_axis_deadzone(i, 0.05);
		
		devices[n] = i;
		n++
	}	
}
show_debug_message(devices);
if (array_length_1d(devices) == 0)
	return undefined;
	else
	return devices;
}

function getFirstController() {
var devices = getControllers();
if(is_undefined(devices)) {
	show_debug_message("No available controllers");
	return 0;
} else
	return devices[0];
}