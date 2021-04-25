//spawn enemies outside of room
random_x = choose(random_range(-10, 0), room_width/2, random_range(room_width, room_width + 10));
random_y = choose(random_range(-10, 0), room_height/2, random_range(room_height, room_height + 10));

//make sure enemies do not spawn in middle of room
if(random_x == room_width/2){
	random_y = choose(random_range(-10, 0), random_range(room_height, room_height + 10));
}
if(random_y == room_height/2){
	random_x = choose(random_range(-10, 0), random_range(room_width, room_width + 10));
}	

instance_create_layer(random_x, random_y, "Instances", objectType);

if (global.game_over == false and global.win == false){
alarm[0] = spawnInterval;
}