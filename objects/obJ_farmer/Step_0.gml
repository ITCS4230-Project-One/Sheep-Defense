image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;;

//initiate reload mechanism
if(global.ammo <= 0 and global.stored_ammo > 0){
	
	global.reload = true
	audio_play_sound(sound_reload , 2, false)
	
	if(global.stored_ammo >= 30){
		global.ammo += 30
		global.stored_ammo -= 30
	}
	else{
		global.ammo += global.stored_ammo
		global.stored_ammo -= global.stored_ammo
	}
}

//hold down left mouse button to fire
if (mouse_check_button(mb_left))
{
	if(bullet_cooldown <= 0)
	{
		if(global.ammo > 0 and !global.reload){
			instance_create_layer(x + lengthdir_x(60, image_angle), y + lengthdir_y(60, image_angle), "layer_bullet", obj_bullet)	
			instance_create_layer(x + lengthdir_x(-15, image_angle), y + lengthdir_y(-15, image_angle), "layer_bullet", obj_bullet)
			sprite_index = spr_firing
			audio_play_sound(sound_gunshot , 1, false)
			global.ammo -= 2
			alarm[0] = 30
			bullet_cooldown = 15;
		}
	}
}

//time it takes to reload
if(global.reload){
	if(global.reload_value < 100){
		global.reload_value += 2
	}
	else{
	global.reload_value = 0
	global.reload = false
	}
}

bullet_cooldown += -1;

if(room == Room1){
	if (global.killed >= 30){
		global.firstlevel = true
	}
}

if(room == Room2){
	if (global.killed >= 50){
		global.win = true
	}
}


if (global.wolfHits <= 0){
	global.game_over = true	
}