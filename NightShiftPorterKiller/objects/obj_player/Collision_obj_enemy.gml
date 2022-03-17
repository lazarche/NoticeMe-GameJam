if(!hitted) {
	if(other.state != "die" && hp > 0) {
		hitted = true;
		hp -= 1;
		global.hp -= 1;
		if(hp == 0)
			state = "die";
	}
	
}