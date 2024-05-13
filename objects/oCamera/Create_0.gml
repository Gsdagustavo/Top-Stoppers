view_width = 1920 / 6;
view_heigth = 1080 / 6;

window_scale = 3;

window_set_size(view_width * window_scale, view_heigth * window_scale);
alarm[0] = 1;

surface_resize(application_surface, view_width * window_scale, view_heigth * window_scale);
