/// @description Insert description here
// You can write your code in this editor
if (global.game_over){
	instance_destroy(obJ_farmer)
	draw_text(400, 690 , "Game Over! Press R to restart.")
}

if(global.win){
	instance_destroy(obJ_farmer)
	draw_text(300, 690 , "CONGRATULATIONS, YOU WIN! Press R to play again.")

}
