// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Navigation(){

}

function get_path_to(target_x, target_y){
	var path = path_add();
	mp_grid_path(global.ai_grid, path, x, y, target_x, target_y, 1);
	return path;
}
