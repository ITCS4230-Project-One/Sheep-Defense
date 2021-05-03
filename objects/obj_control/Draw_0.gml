/// @description Insert description here
// You can write your code in this editor
if (global.game_over){
	instance_destroy(obj_farmer)
	draw_text(room_width/3, room_height/2, "Game Over! Press R to restart.")
	draw_text(room_width/3, room_height/2 + 100, "Final Score: " + string(score))
}

if(global.win){
	score += instance_number(obj_sheep) * 200
	instance_destroy(obj_farmer)
	draw_text(room_width/3, room_height/2, "CONGRATULATIONS, YOU WIN! Press R to play again.")
	draw_text(room_width/3, room_height/2 + 100 , "Final Score: " + string(score))
}


if(global.firstlevel and room == Room1){
	score += instance_number(obj_sheep) * 200
	instance_destroy(obj_farmer)
	draw_text(room_width/3, room_height/2, "First level Completed. Press Enter for next level")
	draw_text(room_width/3, room_height/2 + 100 , "Current Score: " + string(score))
}
