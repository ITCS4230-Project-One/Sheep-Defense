//restart game
if(keyboard_check_pressed(ord("G"))){
	game_restart()	
	score = 0
}


//gives player 100 bullets for ammo 
if(keyboard_check_pressed(ord("B"))){
	global.ammo += 100
}

//move on to next level
if(keyboard_check_pressed(ord("N"))){
	if(room = Room2){
		global.win = true
	}
	else{
		room_goto_next()
	}
}