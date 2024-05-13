function scr_shadows(){
	draw_sprite_ext(image_index, -1, x, y, image_xscale, image_yscale, image_angle, c_black, .3);
	draw_self();
}