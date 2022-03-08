speed-= falloff;
if(speed < 0)
speed = 0;

if(place_meeting(x, y, obj_solid))
speed = 0;

if(speed == 0) {
with(instance_create_layer(x, y, "Instances", obj_shell_dead)) {
	sprite_index = other.sprite_index;
	image_index = other.image_index;
	image_angle = other.image_angle;
	image_speed = 0;
}

instance_destroy();	
	
}

