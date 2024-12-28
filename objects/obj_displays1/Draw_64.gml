/// @description Displays the victory pop-up

if (obj_character1.victory == true && global.pause == true) {
    // Gets dimensions of current camera location (NOT dependent on location)
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();

    // Aligns the draw location to the center
    draw_set_halign(fa_center);

    // Draw the black background rectangle
    draw_set_color(c_black); // Set the color to black
    draw_rectangle(gui_width / 2 - 200, gui_height / 2 - 75, 
                   gui_width / 2 + 200, gui_height / 2 + 75, false);

    // Reset alpha to full opacity
    draw_set_alpha(1);

    // Draw the white text
    draw_set_color(c_white); // Set the color to white
    draw_text(gui_width / 2, gui_height / 2 - 20, "Congratulations, You Won!");
    draw_text(gui_width / 2, gui_height / 2 + 20, "Click \"Space\" to advance!");
}
