// Collision with enemies
function destroy_knife() {
	var enem = instance_nearest(x + hspeed, y + vspeed, oEnemy);
	instance_destroy();
	
	if !enem.is_dead {
		enem.hp -= damage;
		enem.image_blend = c_red;
		enem.alarm[0] = 10;
		audio_play_sound(snd_stab, 1, false);
	}
}

if place_meeting(x + hspeed, y + vspeed, oEnemy) {
	var enem = instance_nearest(x + hspeed, y + vspeed, oEnemy);
	
	if !oPlayer.is_time_stopped {
		destroy_knife();
	} else {
		destroy_after_ts = true;
	}
}

if destroy_after_ts && !oPlayer.is_time_stopped {
	destroy_knife();
	destroy_after_ts = false;
}

// Time Stop condition
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