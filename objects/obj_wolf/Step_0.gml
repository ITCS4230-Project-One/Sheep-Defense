if instance_exists(obJ_farmer){
move_towards_point(obJ_farmer.x, obJ_farmer.y, 3)

direction = point_direction(x, y, obJ_farmer.x, obJ_farmer.y)

image_angle = direction

if(hp <= 0){
	global.killed++;
	instance_destroy()	

}
}if !instance_exists(obJ_farmer){
 instance_destroy(self)
}