/// @description Bullet collision
colliding_bullet = instance_place(x, y, obj_bullet)
if(colliding_bullet != noone) {
	
	if(hitted != colliding_bullet.id) {
		play_sound(snd_enemy_hit);
		hitted = colliding_bullet.id;
		hp -= colliding_bullet.damage;
		colliding_bullet.pierce--;
		if(colliding_bullet.pierce == 0)
		with(colliding_bullet)
			instance_destroy();
	}

}