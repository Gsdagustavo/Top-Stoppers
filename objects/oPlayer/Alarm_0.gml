/// @description Time Stopped
is_time_stopped = false;

alarm[1] = 60 * time_stop_cooldown;

layer_set_visible("fx_time_stop", false);

audio_resume_sound(snd_ost);
audio_sound_pitch(snd_ost, 1);