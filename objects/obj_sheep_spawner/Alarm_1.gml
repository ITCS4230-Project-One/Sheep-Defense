/// @description Insert description here
// You can write your code in this editor
randomize()
random_num = irandom(3) 

if (random_num == 0){
instance_create_layer(1, random_range(0, 765), "sheep_layer", enemyType);
enemyType.image_xscale = -1
}
if (random_num == 1){
instance_create_layer(1360, random_range(0, 765), "sheep_layer", enemyType)	
}
if (random_num == 2){
instance_create_layer(random_range(0, 1360), 0, "sheep_layer", enemyType)	
}
if (random_num == 3){
instance_create_layer(random_range(0, 1360), 765, "sheep_layer", enemyType)		
}

alarm_set(1, spawnInterval)