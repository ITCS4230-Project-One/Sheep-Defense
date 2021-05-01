/// @description Insert description here
// Just goes for player

if instance_exists(obj_farmer){
	if mp_grid_path(global.grid, path, x, y, obj_farmer.x, obj_farmer.y, 1)
    {
      path_start(path, 3, 3, 0);
	  image_angle = direction
    }
	
	}

	
	
	if(hp <= 0){
		global.killed++;
		score += 150
		instance_destroy()	
}

if !instance_exists(obj_farmer){
 instance_destroy(self)
}