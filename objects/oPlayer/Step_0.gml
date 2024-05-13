// --- KEYS AND MOVEMENT ---	

#region
var right_key = keyboard_check(ord("D"));
var left_key = keyboard_check(ord("A"));

var up_key = keyboard_check(ord("W"));
var down_key = keyboard_check(ord("S"));

if vspeed != 0 && hspeed != 0 {
	movespd = 0.85;
} else {
	movespd = 1;
}

mask_index = spr_enemy_down;
depth = -1;

hspeed = (right_key - left_key) * movespd;
vspeed = (down_key - up_key) * movespd;

// Running system
if keyboard_check(vk_shift) && speed != 0 {
	speed = 1.5;
	is_running = true;
	image_speed = 2;
} else {
	movespd = 1;
	is_running = false;
	image_speed = 1;
}

#endregion


// Collision
check_collision();

var point_dir = point_direction(x, y, mouse_x, mouse_y);

switch (point_dir div 90) {
	
		case 0: sprite_index = spr_player_right; break;
		case 1: sprite_index = spr_player_up; break;
		case 2: sprite_index = spr_player_left; break;
		case 3: sprite_index = spr_player_down; break;
}

// --- ABILITIES ---

#region

// Knife Throw
if mouse_check_button_pressed(mb_left) {

	if can_knife_throw {
		
		instance_create_layer(x, y, "Instances", oKnife);
		can_knife_throw = false;
		alarm[4] = 60 * knife_cooldown;
		
		if !is_time_stopped {	
			audio_play_sound(snd_knife_1, 1, false, 0.3, 0, 1);
		} else {
			audio_play_sound(snd_knife_1, 1, false, 0.3, 0, .75);
		}
	}
}

// Knife barrage
if mouse_check_button_pressed(mb_right) {
	if can_knife_barrage {
		var knife = instance_create_layer(x, y, "Instances", oKnife);
		
		knife = instance_create_layer(x, y, "Instances", oKnife);
		knife.direction -= 10;
			
		knife = instance_create_layer(x, y, "Instances", oKnife);
		knife.direction += 10;
	
		can_knife_barrage = false;
		alarm[5] = 60 * (knife_barrage_cooldown);
		
		if !is_time_stopped {
			audio_play_sound(snd_knife_barrage, 1, false);
			audio_sound_pitch(snd_knife_barrage, 1);
		} else {
			audio_play_sound(snd_knife_barrage, 1, false);
			audio_sound_pitch(snd_knife_barrage, .85);
		}
		
		alarm[6] = 30;
	}
}

// Time Skip
if keyboard_check_pressed(ord("C")) && alarm[2] < 0 && can_time_skip && !is_time_stopped {
	time_skip();
	is_running = false;
	
	// Cooldown
	alarm[2] = time_skip_cooldown * 60;
	
	// FX
	layer_set_visible("fx_time_stop", true);
	alarm[7] = 10;
}

// Road Roller
//if keyboard_check_pressed(ord("G")) {
//	instance_create_depth(x, y - 16, -1, oRoadRoller);
//}

// Time Stop
if keyboard_check_pressed(ord("F")) && alarm[1] == -1 && can_time_stop && alarm[7] < 0 {
	is_running = false;
	can_time_stop = false;
	is_time_stopped = true;
	
	alarm[0] = 60 * max_time_stop;
	
	layer_set_visible("fx_time_stop", true);
	
	audio_pause_sound(snd_ost);
	audio_play_sound(snd_timeStop, 1, false);
	
	instance_create_layer(x, y - 8, "Instances", oTimeStopEffect);
	
	knife_barrage_cooldown /= 2;
	knife_cooldown /= 2;
	
	alarm[3] = 10;
	max_time_stop += .5;
	//alarm[8] = ((time_stop_snd_length * 30) + 50); 
} else {
	knife_cooldown = .4;
	knife_barrage_cooldown = 3;
}

// Time Resumes sound
if alarm[0] - 90 == -1 {
	audio_pause_all();
	audio_play_sound(snd_timeResumes, 1, false);
}

// Time Stop stagger
if alarm[3] >= 0 {
	image_index = 1;
	hspeed = 0;
	vspeed = 0;
	speed = 0;
}

// Knife barrage stagger
if (alarm[6] >= 0) {
	hspeed = 0;
	vspeed = 0;
	speed = 0;
	image_index = 1;
}

#endregion