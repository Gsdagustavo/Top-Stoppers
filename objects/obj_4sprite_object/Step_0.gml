// --- SPEED AND COLLISIONS ---
if vspeed != 0 && hspeed != 0 {
	movespd = 0.85;
} else {
	movespd = 1;
}

depth = -1;

if vspeed == 0 && hspeed == 0 {
	image_index = 1;
}

// ---- COLLISIONS ----

#region

// Wall collision
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

#endregion