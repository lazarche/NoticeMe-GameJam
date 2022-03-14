/// @description Bullet collision
if(hitted != other.id) {
	hitted = other.id;
	hp -= other.damage;
	other.pierce--;
	if(other.pierce == 0)
	with(other)
		instance_destroy();
}