destroy_after_ts = false;

speed = 10;

// Sprite
sprite_index = spr_enemy_shot;

alarm[0] = 50;

damage = 10;

// Tracking system
direction = point_direction(x, y, oPlayer.x, oPlayer.y);
image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
