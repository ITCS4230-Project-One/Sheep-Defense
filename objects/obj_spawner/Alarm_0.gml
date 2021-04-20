
if objectTotal >= 0 {
	instance_create_layer(random(room_width - 20), random(room_height - 20), "Instances", objectType);

	alarm[0] = spawnInterval
	objectTotal -= 1
}