if(instance_number(obj_sheep) == 0 and !global.win and !global.firstlevel){
	global.game_over = true
}

if(global.firstlevel and !global.win){
	if(keyboard_check_pressed(vk_enter)){
		room_goto_next()
	}
}