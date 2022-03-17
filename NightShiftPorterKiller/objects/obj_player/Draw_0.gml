/// @description Draw self
if(hitted && state != "die") {
	if(imune_cur % blink_slow == 1){
		draw_self();
	} else {
		blink_count++;
		if(blink_count > 10) {
			blink_count = 0;
			blink_slow += 1;
		}
	}
} else {
	blink_count = 0;
	blink_slow = 5;
	draw_self();
}