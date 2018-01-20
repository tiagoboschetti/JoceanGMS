if (keyboard_check_pressed(vk_up) && 
    place_meeting(phy_position_x,phy_position_y, obj_ground) &&
	phy_speed_y = 0){	
	sprite_index = spr_player_jump;
	
	phy_speed_y = (keyboard_check_pressed(vk_up)) * -7;	
}	