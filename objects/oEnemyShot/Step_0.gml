if place_meeting(x, y, oPlayer) {
	if !oPlayer.is_time_stopped {
		instance_destroy();		
	} else {
		destroy_after_ts = true;
	}
}

if destroy_after_ts && !oPlayer.is_time_stopped {
	instance_destroy();
	destroy_after_ts = false;
}

if oPlayer.is_time_stopped {
	if alarm[0] > 35 {
		speed = 1;
	} else if alarm > 20 {
		speed = .5
	} else if alarm[0] >= 0 {
		speed = .2
	} else {
		speed = 0
	}
} else {
	speed = 5;
}