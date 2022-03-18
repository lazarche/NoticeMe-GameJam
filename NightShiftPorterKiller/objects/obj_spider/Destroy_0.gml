/// @description hathc other egg 70%

// Inherit the parent event
event_inherited();

with(obj_spider_egg) {
	if(random_range(0,10) > 7)
		hatch = true;
}