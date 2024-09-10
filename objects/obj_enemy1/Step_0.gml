/// @description Enemy omnidirectional movement

// Horizontal movement
if (keyboard_check(left_key)) {
	h_speed = -move_speed;
} else if (keyboard_check(right_key)) {
	h_speed = move_speed;
} else {
	h_speed = 0;
}

// Vertical movement
if (keyboard_check(up_key)) {
	v_speed = move_speed;
} else if (keyboard_check(down_key)) {
	v_speed = -move_speed;
} else {
	v_speed = 0;
}

// Enemy movement
obj_enemy1.x += h_speed;
obj_enemy1.y += v_speed;