/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Inherit the parent event
event_inherited();

if alarm[0] == -1 && !oPlayer.is_time_stopped {
	instance_create_layer(x, y, "Instances", oEnemyShot);
	alarm[0] = 60 * shot_cooldown;
}
