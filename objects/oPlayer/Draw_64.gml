draw_set_color(c_yellow);

var plr = oPlayer;

if !plr.is_time_stopped {
	
	// Draw Time Stop cooldown
	if plr.alarm[1] == -1 {
		draw_text(10, 5, "Time Stop ready!");
	} else {
		var txt = "Time Stop cooldown: " + string(alarm[1] / 60); 
		draw_text(10, 5, txt);
	}
	
	// Draw Time Skip cooldown
	if plr.alarm[2] == -1 {
		draw_text(10, 25, "Time Skip ready!");
	} else {
		var txt = "Time Skip cooldown: " + string(alarm[2] / 60);
		draw_text(10, 25, txt);
	}
}
