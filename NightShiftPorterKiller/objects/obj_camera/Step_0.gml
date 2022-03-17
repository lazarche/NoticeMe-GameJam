/// @description Move camera and shake




var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5 ;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5 ;

var new_x = lerp(vpos_x,min(max(obj_player.x - vpos_w, 0), room_width-vpos_w*2), rate);
var new_y = lerp(vpos_y,min(max(obj_player.y - vpos_h,0), room_height-vpos_h*2), rate);


if(shake_duration > 0){
    shake_duration --;
    new_x += choose(-shake_force, shake_force);
	new_y += choose(-shake_force, shake_force);
}




camera_set_view_pos(view_camera[0], new_x, new_y);
