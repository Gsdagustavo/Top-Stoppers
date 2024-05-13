draw_self();
//draw_text(x - 32, y + 32, "hp: " + string(hp));

if !is_dead {
	draw_healthbar(x - 20, y - 28, x + 20, y - 25, hp, c_gray, c_red, c_red, 0, true, true);
}

//draw_circle(x, y - 8, 64, true);

//if collision_circle(x, y - 8, 64, pPlayer, false, false) {
//	draw_text(x, y - 32, "collision");
//}

//draw_text(x, y - 32, "is dead: " + string(is_dead));