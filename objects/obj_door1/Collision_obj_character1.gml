/// @description collision with player

// Victory is player has key, at least 5 coins, and then touches the door
if(obj_character1.hasKey == true && obj_character1.c1_coins >= 5) {
	obj_character1.victory = true;	
}