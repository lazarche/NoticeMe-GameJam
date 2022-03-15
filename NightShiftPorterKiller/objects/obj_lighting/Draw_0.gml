gpu_set_blendmode(bm_subtract);

draw_surface(light, camera_get_view_x(cam), camera_get_view_y(cam));
gpu_set_blendmode(bm_normal);