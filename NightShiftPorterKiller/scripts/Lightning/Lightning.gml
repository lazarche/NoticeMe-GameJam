// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Lightning(){

}

function light_draw_circle(xx, yy, size, color, alpha) {
	gpu_set_blendmode(bm_subtract);
	surface_set_target(light);
	var _cam = view_get_camera(0);
	draw_set_alpha(alpha)
	draw_ellipse_color(xx - size / 2 - camera_get_view_x(_cam),y - size/2 - camera_get_view_y(_cam),x+size/2 - camera_get_view_x(_cam),y+size/2 - camera_get_view_y(_cam),color,c_black,false)
	draw_set_alpha(1);
	surface_reset_target(); 
	gpu_set_blendmode(bm_normal);

}

function light_draw_flash(xx, yy, dist, looking_angle, spread_angle) {
	gpu_set_blendmode(bm_subtract);
	surface_set_target(light);
	var _cam = view_get_camera(0);
	var rot = spread_angle/2
	
	var x1 = xx - camera_get_view_x(_cam);
	var y1 = yy - camera_get_view_y(_cam);
	var x2 = xx + lengthdir_x(dist, looking_angle-rot) - camera_get_view_x(_cam);
	var y2 = yy + lengthdir_y(dist, looking_angle-rot) - camera_get_view_y(_cam);
	var x3 = xx + lengthdir_x(dist, looking_angle+rot) - camera_get_view_x(_cam);
	var y3 = yy + lengthdir_y(dist, looking_angle+rot) - camera_get_view_y(_cam);
	
	draw_set_color(c_yellow);
	draw_triangle(x1, y1, x2, y2, x3, y3, false);
	draw_set_color(-1);
	
	surface_reset_target(); 
	gpu_set_blendmode(bm_normal);

}

function light_draw_sprite(xx, yy, spr_index, img_index, color) {
	gpu_set_blendmode(bm_subtract);
	surface_set_target(light);
	var _cam = view_get_camera(0);

	draw_sprite_ext(spr_index, img_index, xx- camera_get_view_x(_cam), yy- camera_get_view_y(_cam), 1, 1, 0, color, 1);
	
	surface_reset_target(); 
	gpu_set_blendmode(bm_normal);
}
//camera_get_view_x(cam), camera_get_view_y(cam)