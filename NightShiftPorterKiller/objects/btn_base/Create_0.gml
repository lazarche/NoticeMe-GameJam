focused = false;
control = false;
clicked = false;
image_speed = 0;

function OnClick() {};

function MouseHover(){
	if(mouse_x > x && mouse_x < x+sprite_width && mouse_y > y && mouse_y < y+sprite_height)
		return true;
		else
		return false;
}