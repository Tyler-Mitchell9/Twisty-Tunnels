/// @description Character movement, character hp management, victory management

if(global.pause != true) {
	// Horizontal Movement
	if (keyboard_check(left_key)) {
	 h_speed = -move_speed;
	} else if (keyboard_check(right_key)) {
	    h_speed = move_speed;
	} else {
	   h_speed = 0;
	}

	// Vertical Movement
	if (keyboard_check(up_key)) {
	   v_speed = -move_speed;
	} else if (keyboard_check(down_key)) {
	   v_speed = move_speed;
	} else {
	   v_speed = 0;
	}

	// Apply movement
	x += h_speed;
	y += v_speed;

	// Decrease invincibility timer
	if (invincibility_timer > 0) {
	    invincibility_timer -= 1;
	}

	// Checking if character is alive
	if (c1_health <= 0) {
		game_restart();
	}

	// See if player "won" and pause game
	if(c1_coins >= 10 && victory == false) {
		victory = true;
		global.pause = true;
	}
} else {
	// Unpause option
	if(global.pause && keyboard_check_pressed(vk_space)) {  // Use space to unpause
		global.pause = false;  // Resume the game
	}
}