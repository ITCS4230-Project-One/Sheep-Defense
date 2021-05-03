

if instance_exists(obj_farmer){
	
	if target == 0 and instance_exists(obj_sheep){
	/*
		move_towards_point(obj_sheep.x, obj_sheep.y, 3)

		direction = point_direction(x, y, obj_sheep.x, obj_sheep.y)

		image_angle = direction
	*/	
	
	//pathing towards sheep
	if mp_grid_path(global.grid, path, x, y, obj_sheep.x, obj_sheep.y, 1)
    {
      path_start(path, 3, 3, 0);
	  image_angle = direction
    }
	
	
	}
	else{
	
	/*
	move_towards_point(obJ_farmer.x, obJ_farmer.y, 3)

	direction = point_direction(x, y, obJ_farmer.x, obJ_farmer.y)

	image_angle = direction
	
	*/
	
	//pathing towards farmer
	if mp_grid_path(global.grid, path, x, y, obj_farmer.x, obj_farmer.y, 1)
    {
      path_start(path, 3, 3, 0);
	  image_angle = direction
    }
	
	}
	
	
	
	if(hp <= 0){
		global.killed++;
		score += 100
		instance_destroy()	

	}
}

//if(speed > 0) {
//	play	
//}

if !instance_exists(obj_farmer){
 instance_destroy(self)
}