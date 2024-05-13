function scr_repopulate(kill_count){
	var init_x = 200;
	var init_y = 180;
		
	if kill_count <= 5 {		
		instance_create_layer(init_x, init_y, "Instances", oEnemy);	
	} else if kill_count <= 10 {
		instance_create_layer(init_x, init_y, "Instances", oEnemy);	
		instance_create_layer(init_x + 10, init_y + 10, "Instances", oEnemy);	
	} else if kill_count <= 15 {
		instance_create_layer(init_x, init_y, "Instances", oEnemy);	
		instance_create_layer(init_x + 10, init_y + 10, "Instances", oEnemy);	
		instance_create_layer(init_x - 10, init_y - 10, "Instances", oEnemy);	
	} else {
		instance_create_layer(init_x, init_y, "Instances", oEnemy);	
		instance_create_layer(init_x + 10, init_y + 10, "Instances", oEnemy);	
		instance_create_layer(init_x - 10, init_y - 10, "Instances", oEnemy);	
		instance_create_layer(init_x + 15, init_y + 15, "Instances", oEnemy);
	}
} 