move_towards_point(obJ_farmer.x, obJ_farmer.y, 3)

direction = point_direction(x, y, obJ_farmer.x, obJ_farmer.y)

image_angle = direction

if(hp <= 0){
	instance_destroy()	
}