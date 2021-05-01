/// @description Insert description here
// goes just for the sheep

if instance_exists(obj_sheep){
	if mp_grid_path(global.grid, path, x, y, obj_sheep.x, obj_sheep.y, 1)
    {
      path_start(path, 3, 3, 0);
	  image_angle = direction
    }
	
}

	
	
	if(hp <= 0){
		global.killed++;
		score += 50
		instance_destroy()	
}

if !instance_exists(obj_farmer){
 instance_destroy(self)
}