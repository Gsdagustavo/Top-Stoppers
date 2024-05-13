var scale = .5;

if oPlayer.alarm[0] > 525 {
	image_xscale += scale;
	image_yscale += scale;
} else {
	if image_xscale != 0 {
		image_xscale -= scale
		image_yscale -= scale;
	} else {
		instance_destroy();
	}
}

var tx = oPlayer.x;
var ty = oPlayer.y;

direction = point_direction(x, y, tx, ty);
