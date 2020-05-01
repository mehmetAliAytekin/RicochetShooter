if (movement_direction>=0 && speed_x==0 && speed_y==0) {
	speed_x=cos(movement_direction*pi/180)*movement_speed;
	speed_y=-sin(movement_direction*pi/180)*movement_speed; 
}

if (place_meeting(x+speed_x,y,obj_wall)){
	var movement_sign=sign(speed_x);
	while(!place_meeting(x+movement_sign,y,obj_wall)){
		x+=movement_sign;
	} 
	image_blend=c_orange;
	speed_x*=-1;
}

x+=speed_x;

if (place_meeting(x,y+speed_y,obj_wall)){
	var movement_sign=sign(speed_y);
	while(!place_meeting(x,y+movement_sign,obj_wall)){
		y+=movement_sign;
	} 
	image_blend=c_orange;
	speed_y*=-1;
}

y+=speed_y;