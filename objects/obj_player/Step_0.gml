/// @description Executes Every Frame
// You can write your code in this editor
if (phy_speed_y < 10){
	phy_speed_y += room0.gravity;
}

if (phy_speed_y > 4){
	image_index = 7;
	image_speed = 0;
}
else
	image_speed	= 1;
	
//Move para direita
if (keyboard_check(vk_right)){
	if (place_meeting(phy_position_x,phy_position_y, obj_ground) &&
	    phy_speed_y = 0) {
		sprite_index = spr_player_walk;
	} 

	if (image_xscale = -1){
		image_xscale = 1;
	}
	phy_position_x = phy_position_x + 4;
	
	jump();	
}
else 
//Move para Esquerda
if (keyboard_check(vk_left)){
	if (place_meeting(phy_position_x,phy_position_y, obj_ground) &&
	    phy_speed_y = 0) {
		sprite_index = spr_player_walk;
	}
		
	if (image_xscale = 1){
		image_xscale = -1;
	}		
	phy_position_x = phy_position_x - 4;
	
	jump();	
}
else 
//Jump
if (keyboard_check_pressed(vk_up) && 
    place_meeting(phy_position_x,phy_position_y, obj_ground) &&
	phy_speed_y = 0){	
	sprite_index = spr_player_jump;
	
	phy_speed_y = (keyboard_check_pressed(vk_up)) * -7;	
}
else
	if (place_meeting(phy_position_x,phy_position_y, obj_ground) &&
	    (phy_speed_x = 0 && phy_speed_y = 0))
		sprite_index = spr_player_idle;		  