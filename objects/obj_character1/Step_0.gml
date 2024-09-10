/// @description Character movement and 

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
obj_character1.x += h_speed;
obj_character1.y += v_speed;

// Decrease invincibility timer
if (invincibility_timer > 0) {
    invincibility_timer -= 1;
}

// Checking if character is alive
if (global.c1_health <= 0) {
	game_restart();
}