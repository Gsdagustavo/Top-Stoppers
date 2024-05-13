draw_self();
draw_set_color(c_white);

//draw_text(x, y - 96, "Can ts: " + string(can_time_stop));
//draw_text(x, y - 128, "Is TS: " + string(is_time_stopped));

if is_time_stopped {
	draw_text(x - 45, y + 10, "Time Stopped!");
	draw_healthbar(x - 30, y + 40, x + 30, y + 42, alarm[0] / 6, c_black, c_white, c_white, 0, true, false);
} 

//draw_text(x, y - 96, "hspeed: " + string(hspeed));
//draw_text(x, y - 128, "vspeed: " + string(vspeed));
//draw_text(x, y + 32, "FPS: " + string(fps));
//draw_text(x, y + 64, "Direction: " + string(aim_dir));
//draw_text(x, y + 96, "Alarm[0]: " + string(alarm[0]));
//draw_text(x, y + 128, "Alarm[1]: " + string(alarm[1]));

//if alarm[0] != -1 {
//	draw_text(x, y + 164, "layer true");
//} else {
//	draw_text(x, y + 164, "layer false");
//}

//draw_text(x, y + 32, "alarm8: " + string(alarm[8]));
//draw_text(x, y + 48, "image speed: " + string());