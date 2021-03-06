image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;;

//Setup player sprite based off of health
if(global.wolfHits == 3) {
	sprite_index = spr_farmer
	sprite_firing = spr_firing
}
else if(global.wolfHits == 2) {
	sprite_index = spr_farmer_two
	sprite_firing = spr_farmer_two_firing
}
else if(global.wolfHits == 1) {
	sprite_index = spr_farmer_three
	sprite_firing = spr_farmer_three_firing
}

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
			sprite_index = sprite_firing//spr_firing
			audio_play_sound(sound_gunshot , 1, false)
			global.ammo -= 2
			alarm[0] = 30
			bullet_cooldown = 15;
		}
		
	}
}

//Play reload noise only once
if(mouse_check_button_pressed(mb_left)) { 
	if(global.ammo == 0) {
			audio_play_sound(sound_empty_gun_click, 3, false)
			alarm[0] = 30
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
	if (global.killed >= 25){
		global.firstlevel = true
	}
}

if(room == Room2){
	if (global.killed >= 35){
		global.win = true
	}
}


if (global.wolfHits <= 0){
	global.game_over = true	
}