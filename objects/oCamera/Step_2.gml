#macro view view_camera[0]

//if follow != noone {
//	xTo +=	follow.x;
//	yTo += follow.y;
//}

//x += (xTo - x) / 25;
//y += (yTo - y) / 25;

//camera_set_view_pos(view, x - (camWidth / 2), y - (camHeight / 2));

if instance_exists(oPlayer) {
	var _x = clamp(oPlayer.x - view_width / 2, 0, room_width - view_width);
	var _y = clamp(oPlayer.y - view_heigth / 2, 0, room_height- view_heigth);

	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	var _spd = 0.1;
	camera_set_view_pos(view, lerp(_cur_x, _x, _spd), lerp(_cur_y, _y, _spd));
}

