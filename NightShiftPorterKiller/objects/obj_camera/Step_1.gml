/// @description Zoom on death
if(obj_player.state == "die" && zoom > 0.15) {
	zoom -= 0.005;
	camera_set_view_size(view_camera[0], width*zoom, height*zoom);
}