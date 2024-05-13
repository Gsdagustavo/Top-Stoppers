ospeed = .75;

// Sprites

depth = 10;

sprites[RIGHT] = spr_enemy_right;
sprites[UP] = spr_enemy_up;
sprites[LEFT] = spr_enemy_left;
sprites[DOWN] = spr_enemy_down;

face = DOWN;

// Time Stop feature
deactivated = false;

// Health
hp = 100;
is_dead = false;
fx_created = false;

// Shooting system
can_shoot = false;
shot_cooldown = 3; // Seconds
alarm[0] = 60 * shot_cooldown;

target_x = 0;
target_y = 0;

collisions = 0;