/// @description Displays the coins collected and health

var camera_x = camera_get_view_x(view_camera[0]); // Get the x-position of the camera
var camera_y = camera_get_view_y(view_camera[0]); // Get the y-position of the camera

draw_sprite(spr_item2, -1, camera_x + 40, camera_y + 40); // Display health sprite
draw_text(camera_x + 85, camera_y + 30, ":" + string(obj_character1.c1_health)); // Display health

draw_sprite(spr_item1, -1, camera_x + 40, camera_y + 120); // Display coin sprite
draw_text(camera_x + 85, camera_y + 110, ":" + string(obj_character1.c1_coins)); // Display coin count