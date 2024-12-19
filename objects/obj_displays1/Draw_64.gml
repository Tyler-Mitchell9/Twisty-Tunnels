/// @description Displays the victory pop-up

if (obj_character1.victory == true && global.pause == true) {
	// Gets dimensions of current camera location (NOT dependent on location)
    var gui_width = display_get_gui_width();
    var gui_height = display_get_gui_height();
	
	// Aligns the draw location to the center
    draw_set_halign(fa_center);

    // Draw the victory text
    draw_text(gui_width / 2, gui_height / 2, "Congratulations, You Won!");

    // Draw the semi-transparent box behind the text
    draw_set_alpha(0.5);
    draw_rectangle(gui_width / 2 - 150, gui_height / 2 - 50, 
                   gui_width / 2 + 150, gui_height / 2 + 50, false);
    draw_set_alpha(1);  // Reset alpha
}
