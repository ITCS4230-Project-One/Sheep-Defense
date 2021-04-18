image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;;


if (mouse_check_button(mb_left))
{
	if(bullet_cooldown <= 0)
	{
		instance_create_layer(x + lengthdir_x(60, image_angle), y + lengthdir_y(60, image_angle), "layer_bullet", obj_bullet)	
		instance_create_layer(x + lengthdir_x(-15, image_angle), y + lengthdir_y(-15, image_angle), "layer_bullet", obj_bullet)
		sprite_index = spr_firing
		alarm[0] = 30
		bullet_cooldown = 15;
	}
}

bullet_cooldown += -1;
