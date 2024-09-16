/// @description Displays the coins collected and health

draw_sprite(spr_item2, 0, 40, 40); // Display health sprite
draw_text(75, 30, ":" + string(global.c1_health)); // Display health

draw_sprite(spr_item1, 0, 40, 120); // Display coin sprite
draw_text(75, 110, ":" + string(global.coins)); // Display coin count