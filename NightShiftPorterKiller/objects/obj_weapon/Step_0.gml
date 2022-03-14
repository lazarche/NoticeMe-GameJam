#region Follow Carrier
if(carrier != noone) {
	dir = carrier.looking_direction;
	x = carrier.x + sign(image_yscale)*4;
	y = carrier.y+6;
	image_angle = dir;
	depth = carrier.depth-1;
	image_yscale = carrier.image_xscale;
}
#endregion

if(shoot) {
	
	if(canshoot) {// || gamepad_button_check_pressed(obj_player.controller_id, obj_player.attack_button)) {
		if(image_yscale < 0) {
			var spawn_x = x+lengthdir_x(pipe, dir-degre);
			var spawn_y = y+lengthdir_y(pipe, dir-degre);
		}
		else{
			var spawn_x = x+lengthdir_x(pipe, dir+degre);
			var spawn_y = y+lengthdir_y(pipe, dir+degre);
		}
		
		//Gun shot
		var gunshot = instance_create_layer(spawn_x, spawn_y, "Instances", obj_gunshot);	
		gunshot.image_angle = dir;
		gunshot.depth = depth-1;
		
		#region Bullet
		var offset = accuracy/bullet_count;
		var counter = -floor(bullet_count/2);
		repeat(bullet_count) {
			if(bullet_count > 1){
				//Shotguns
				//Other
				var bullet = instance_create_layer(spawn_x, spawn_y, "Instances", obj_bullet);	
				bullet.sprite_index = ammo;
				bullet.damage = damage;
				bullet.who = carrier.object_index;
				bullet.image_angle = dir;
				bullet.depth = depth-2;
				bullet.pierce = pierce;
		
				spd = 10
				bullet.damage = damage;
			

				with(bullet) {
					//var rnd = irandom_range(-other.accuracy, other.accuracy);
					rnd = offset*counter
					move_towards_point(x+lengthdir_x(100, image_angle + rnd), y+lengthdir_y(100, image_angle + rnd), other.spd);
					image_angle = direction;
					counter++;
				}
			} else {
				//Other
				var bullet = instance_create_layer(spawn_x, spawn_y, "Instances", obj_bullet);	
				bullet.sprite_index = ammo;
				bullet.damage = damage;
				bullet.who = carrier.object_index;
				bullet.image_angle = dir;
				bullet.depth = depth-2;
		
				spd = 10
				bullet.damage = damage;
			

				with(bullet) {
					var rnd = irandom_range(-other.accuracy, other.accuracy);
					move_towards_point(x+lengthdir_x(100, image_angle + rnd), y+lengthdir_y(100, image_angle + rnd), other.spd);
					image_angle = direction;
				}
			}
		}
		#endregion
		
		#region Shell particle
		var shell = instance_create_layer(spawn_x, spawn_y, "Instances", obj_shell);	
		shell.image_index = particle;
		shell.direction = random_range(dir-45-180, dir+45-180);
		shell.image_angle = shell.direction;
		
		//if(global.sound_effects)
			//audio_play_sound(sound, 1, 0)
		canshoot = false;
		
		
		alarm[1] = room_speed/(firerate*2);
		
		#endregion
		
		//Shake
		obj_camera.shake_duration = 3;
	}
}

//Camera