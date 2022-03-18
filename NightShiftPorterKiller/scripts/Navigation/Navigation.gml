// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Navigation(){

}

function get_path_to(target_x, target_y){
	var path = path_add();
	mp_grid_path(global.ai_grid, path, x, y, target_x, target_y, 1);
	return path;
}


function get_bullet_at_player(bullet_spd) {
    var _x = obj_player.x - x;
    var _y = obj_player.y - y;
    var _u = obj_player.spd_x - hspeed;
    var _v = obj_player.spd_y - vspeed;
    //--------------------------------------------------------------------  
    var _a = _u*_u + _v*_v - bullet_spd*bullet_spd;
    if (_a != 0 || true) {
        var _b = 2*(_x*_u + _y*_v);
        var _c = _x*_x + _y*_y;
        var _disc = _b*_b - 4*_a*_c;
        //--------------------------------------------------------------------  
        if (_disc > 0) {
            var _t = (-_b -sqrt(_disc) ) / (2*_a);
            var _aim_x = _u * _t;
            var _aim_y = _v * _t;
            var _dir = point_direction(0,0,_x + _aim_x,_y + _aim_y);
			
			var bul = instance_create_layer( x, y, "Instances" ,obj_enemy_projectile );
                bul.speed = bullet_spd;
                bul.direction = _dir;
                bul.hspeed += hspeed;
                bul.vspeed += vspeed;
				
				return bul;
        }     
     }
	 return noone;
}

function get_bullet_at_player_spd(bullet_spd) {
    var _x = obj_player.x - x;
    var _y = obj_player.y - y;
    var _u = obj_player.spd_x - spd_x;
    var _v = obj_player.spd_y - spd_y;
    //--------------------------------------------------------------------  
    var _a = _u*_u + _v*_v - bullet_spd*bullet_spd;
    if (_a != 0 || true) {
        var _b = 2*(_x*_u + _y*_v);
        var _c = _x*_x + _y*_y;
        var _disc = _b*_b - 4*_a*_c;
        //--------------------------------------------------------------------  
        if (_disc > 0) {
            var _t = (-_b -sqrt(_disc) ) / (2*_a);
            var _aim_x = _u * _t;
            var _aim_y = _v * _t;
            var _dir = point_direction(0,0,_x + _aim_x,_y + _aim_y);
			
			var bul = instance_create_layer( x, y, "Instances" ,obj_enemy_projectile );
                bul.speed = bullet_spd;
                bul.direction = _dir;
                bul.hspeed += hspeed;
                bul.vspeed += vspeed;
				
				return bul;
        }     
     }
	 return noone;
}