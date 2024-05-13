var alpha = .025;

if oPlayer.alarm[0] > 570 {
	image_alpha += alpha
}

if !oPlayer.is_time_stopped || enem.is_dead{
	instance_destroy();
}