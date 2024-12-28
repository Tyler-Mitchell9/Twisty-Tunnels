/// @description Collision logic for the player

instance_destroy();

if(obj_character1.c1_health + heartValue > 100) {
	obj_character1.c1_health = 100; // Max health value of 100
} else {
	obj_character1.c1_health += heartValue // Otherwise add the hp
}