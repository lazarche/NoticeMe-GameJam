/// @description Highscore
var add = 0;
switch(object_index) {
	case obj_spider: add = 500 break;
	case obj_bat: add = 750 break;
	case obj_buljavi: add = 1250 break;
	case obj_veliki: add = 2500 break;
	case obj_skeleton_knife:
	case obj_skeleton: add = 3000 break;
	case obj_reaper: add = 30000 break;
	
}
global.highscore += add;
