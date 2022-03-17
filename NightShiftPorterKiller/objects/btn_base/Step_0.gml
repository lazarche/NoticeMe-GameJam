/// @description 



if(focused && control) {
	controller_id = getFirstController();
	var lhaxis = gamepad_axis_value(controller_id, gp_axislh);
	var lvaxis = gamepad_axis_value(controller_id, gp_axislv);
	//Horizontal
	
	if(abs(lhaxis) > 0.5 || abs(lvaxis) > 0.5) {
		focused = false;
		control = false;
		var temp = noone;
		if(lhaxis > 0.5) {
			temp = ClosestButton("right");
		} else if (lhaxis < -0.5) {
			temp = ClosestButton("left");
		} else if (lvaxis < -0.5) {
			temp = ClosestButton("up");
			show_debug_message("up")
		} else if (lvaxis > 0.5) {
			temp = ClosestButton("down");
		} 
		temp.focused = true;
		temp.alarm[0] = 20;		
	}
}




function ClosestButton(dir) {

	var closest = self;
	var closest_dist = 999999;

	with(btn_base) {
		switch(dir) {
			case "right":
				if(x > other.x)
					if(abs(x - other.x) < closest_dist) {
						closest_dist = abs(x-other.x);
						closest = self;
					}
			break;
			
			case "left":
				if(x < other.x)
					if(abs(x - other.x) < closest_dist) {
						closest_dist = abs(x-other.x);
						closest = self;
					}
			break;
			
			case "up":
				if(y < other.y)
					if(abs(y - other.y) < closest_dist) {
						closest_dist = abs(y-other.y);
						closest = self;
					}
			break;
			
			case "down":
				if(y > other.y)
					if(abs(y - other.y) < closest_dist) {
						closest_dist = abs(y-other.y);
						closest = self;
					}
			break;
		}
	}
	
	return closest;
	
}