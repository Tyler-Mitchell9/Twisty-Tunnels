/// @description Displays the victory pop-up

if (obj_character1.victory == true && global.pause == true) {
    // Variables for getting the camera position
    var cam_x = camera_get_view_x(view_camera[0]); // Helps display the text relative to current camera position
    var cam_y = camera_get_view_y(view_camera[0]); // Helps display the text relative to current camera position
    var cam_width = camera_get_view_width(view_camera[0]);
    var cam_height = camera_get_view_height(view_camera[0]);

    // Set the font and alignment
    // draw_set_font(fnt_victory);
    draw_set_halign(fa_center);
    
    // Draw text in the center of the camera view
    draw_text(cam_x + cam_width / 2, cam_y + cam_height / 2, "Congratulations, You Won!");
    
    // Draw a semi-transparent box behind the text
    draw_set_alpha(0.5);
    draw_rectangle(cam_x + cam_width / 2 - 150, cam_y + cam_height / 2 - 50, 
                   cam_x + cam_width / 2 + 150, cam_y + cam_height / 2 + 50, false);
    draw_set_alpha(1);  // Reset alpha to fully opaque
}