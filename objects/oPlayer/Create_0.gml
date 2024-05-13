// Game specs
window_set_size(1280, 720);

// Movement
speed = 1;

hspeed = 0;
vspeed = 0;

movespd = 1;

// Sprites

sprites = [];

sprites[RIGHT] = spr_player_right;
sprites[UP] = spr_player_up;
sprites[LEFT] = spr_player_left;
sprites[DOWN] = spr_player_down;

face = DOWN;

// Game Sound
audio_play_sound(snd_ost, 10, true);

time_stop_snd_length = audio_sound_length(snd_timeStop);
time_resumes_snd_length = audio_sound_length(snd_timeResumes);

// Player stats
player_max_health = 100;
player_current_health = 100;
is_dead = false;
is_running = false;

// Knives
aim_dir = 0;
kill_count = 0;

can_knife_throw = true;
can_knife_barrage = true;

knife_cooldown = .4;
knife_barrage_cooldown = 3;

// Time stop stats
max_time_stop = 1; // Seconds
time_stop_cooldown = 10; // Seconds
player_current_timeStopCooldown = 0; // Seconds
can_time_stop = true;
is_time_stopped = false;

// Time Skip
can_time_skip = true;
time_skip_length = 150;
time_skip_cooldown = 3;
