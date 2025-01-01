/// @description Character movement, character hp management, victory management

if (global.pause != true) {
	// Increase move speed based on coins
	move_speed = 5 + c1_coins;
	
    // Horizontal Movement
    if (keyboard_check(left_key) && !place_meeting(x - move_speed, y, obj_wall1)) {
        h_speed = -move_speed;
    } else if (keyboard_check(right_key) && !place_meeting(x + move_speed, y, obj_wall1)) {
        h_speed = move_speed;
    } else {
        h_speed = 0;
    }

    // Vertical Movement
    if (keyboard_check(up_key) && !place_meeting(x, y - move_speed, obj_wall1)) {
        v_speed = -move_speed;
    } else if (keyboard_check(down_key) && !place_meeting(x, y + move_speed, obj_wall1)) {
        v_speed = move_speed;
    } else {
        v_speed = 0;
    }

    // Apply movement
    x += h_speed;
    y += v_speed;

    // Decrease invincibility timer
    if (invincibility_timer > 0) {
		sprite_index = spr_character1_invincible;
        invincibility_timer -= 1;
    } else {
		sprite_index = spr_character1;
	}

    // Checking if character is alive
    if (c1_health <= 0) {
        game_restart();
    }

    // See if player "won" and pause game
    if (victory == true && postVictory == false) {
		c1_health = 9999
        postVictory = true;
        global.pause = true;
    }

    // Advance to room2
    if (victory == true) {
        timer++;

        if (timer >= room_speed * 2) {
            room_goto(Practice);
        }
    }
} else {
    // Unpause option
    if (global.pause && keyboard_check_pressed(vk_space)) {  // Use space to unpause
        global.pause = false;  // Resume the game
    }
}
