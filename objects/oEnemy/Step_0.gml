// Set movement during timestop
if instance_nearest(x, y, oPlayer).is_time_stopped {
	speed = 0;
	image_speed = 0;
} else {
	image_speed = 1;
	speed = 1;
}

if is_dead {
	hspeed = 0;
	vspeed = 0;
	direction = 90;
	speed = 0;
	
	image_speed = 0;
}

if !fx_created && oPlayer.is_time_stopped {
	instance_create_layer(x, y - 8, "Instances", oTimeStopEffectEnemy);
	fx_created = true;
}

if !oPlayer.is_time_stopped {
	if fx_created {
		var ts_eff = instance_nearest(x, y - 8, oTimeStopEffectEnemy);
		instance_destroy(ts_eff);
		fx_created = false;
	}
}

// Knife hit
if place_meeting(x, y, oKnife) && !is_dead {
	if !oPlayer.is_time_stopped {	
		image_blend = c_red;
		alarm[0] = 10;
	} 
}

if hp <= 0 && !is_dead {
	sprite_index = spr_enemy_dead;
	is_dead = true;
	
	alarm[1] = 120;
	
	oPlayer.kill_count++;
}

if oPlayer.is_time_stopped && alarm[1] > -1 {
	alarm[1] += 1;
}

if instance_number(oEnemy) <= 1 && !oPlayer.is_time_stopped {
	scr_repopulate(oPlayer.kill_count);
}

// Chasing system
target_x = instance_nearest(x, y, oPlayer).x
target_y = instance_nearest(x, y, oPlayer).y
direction = point_direction(x, y, target_x, target_y);

// Sprites
if !oPlayer.is_time_stopped && !is_dead {
	switch (direction div 90)
	{
		case 0: sprite_index = spr_enemy_right; break;
		case 1: sprite_index = spr_enemy_up; break;
		case 2: sprite_index = spr_enemy_left; break;
		case 3: sprite_index = spr_enemy_down; break;
	}
}

mask_index = spr_enemy_down;

// Collisions
check_collision()