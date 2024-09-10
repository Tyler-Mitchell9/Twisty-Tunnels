/// @description Displays the coins collected and health

draw_sprite(Sprite4, 0, 40, 40); // Display health sprite
draw_text(75, 30, ":" + string(global.c1_health)); // Display health
// testing this testing 
draw_sprite(Sprite3, 0, 40, 120); // Display coin sprite
draw_text(75, 110, ":" + string(global.coins)); // Display coin count