draw_set_font(font)

//keep track of ammo
draw_sprite(spr_displayBullets, 0, 0, 665)
draw_text(80, 690, string(global.ammo) + " / " + string(global.stored_ammo))

//draw_sprite(spr_ammo, 0, 150, 700)
//draw_text(225, 690, string(global.stored_ammo))

if(instance_exists(obJ_farmer)){
	if(global.reload and global.reload_value < 100){
		//reloading text above player
		draw_text(obJ_farmer.x - 85, obJ_farmer.y -125, " Reloading ")
		//bar to indicate how long it takes to reload
		draw_healthbar(obJ_farmer.x - 65, obJ_farmer.y + 100, obJ_farmer.x + 70, 
		obJ_farmer.y + 110, global.reload_value, c_black, c_red, c_red, 0, true, true )
		
	}
}

draw_text(2, 100, string(global.killed) + " / 10 wolves")

for (var i = 0; i < global.wolfHits; i++){
	draw_sprite(spr_hits, 0, 80 * i, 40)
}
