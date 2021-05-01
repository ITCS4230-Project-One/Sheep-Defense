draw_set_font(font)

//keep track of ammo
draw_sprite(spr_displayBullets, 0, 0, 665)
draw_text(80, 702, string(global.ammo) + " / " + string(global.stored_ammo))

//draw_sprite(spr_ammo, 0, 150, 700)
//draw_text(225, 690, string(global.stored_ammo))

if(instance_exists(obj_farmer)){
	if(global.reload and global.reload_value < 100){
		//reloading text above player
		draw_text(obj_farmer.x - 85, obj_farmer.y -125, " Reloading ")
		//bar to indicate how long it takes to reload
		draw_healthbar(obj_farmer.x - 65, obj_farmer.y + 100, obj_farmer.x + 70, 
		obj_farmer.y + 110, global.reload_value, c_black, c_red, c_red, 0, true, true )
		
	}
}

//wave counter
draw_text(2, 100, "Wave: " + string(global.killed) + " / 10 wolves")

//sheep counter
if(instance_exists(obj_sheep)){
	draw_text(2, 150, "Sheep remaining: " + string(instance_number(obj_sheep)))
	//score counter
	draw_text(2, 200, "Score: " + string(score))
}

//life
for (var i = 0; i < global.wolfHits; i++){
	draw_sprite(spr_hits, 0, 80 * i, 40)
}
