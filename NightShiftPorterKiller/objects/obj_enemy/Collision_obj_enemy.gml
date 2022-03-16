//Gurkanje
if(other.x>x && !place_meeting(x-movespeed, y, obj_solid))
x-=movespeed;
if(other.x<=x && !place_meeting(x+movespeed, y, obj_solid)) 
x+=movespeed;
if(other.y>y && !place_meeting(x, y-movespeed, obj_solid)) 
y-=movespeed;
if(other.y<=y && !place_meeting(x, y+movespeed, obj_solid))
y+=movespeed;
