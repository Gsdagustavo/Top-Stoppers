function time_skip() {
	var mouseDirection = point_direction(x, y, mouse_x, mouse_y);
	var distance = point_distance(x, y, mouse_x, mouse_y);
	
	if distance > 150 {
		distance = 150;
	}
	
	x += lengthdir_x(distance, mouseDirection);
	y += lengthdir_y(distance, mouseDirection);
	
	audio_play_sound(snd_time_skip, 1, false);
	alarm[7] = 30;
}