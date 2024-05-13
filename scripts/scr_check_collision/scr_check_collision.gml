function check_collision(){
	
	if place_meeting(x + hspeed, y, oWall) {
	hspeed = 0;
	}

	if place_meeting(x, y + vspeed, oWall) {
		vspeed = 0;
	}

	if place_meeting(x + hspeed, y + vspeed, oWall) {
		hspeed = 0;
		vspeed = 0;
	}

	// Set sprites

	if vspeed == 0 && hspeed == 0 {
		image_speed = 0;
		image_index = 3;
	} else {
		image_speed = 1;
	}
}