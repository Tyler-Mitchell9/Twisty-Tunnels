/// @description Initalizes character variables

global.c1_health = 100; // Character health
h_speed = 0;  // Horizontal speed
v_speed = 0;  // Vertical speed
move_speed = 5;  // Speed at which the character moves
invincibility_duration = 60; // Duration of invincibility
invincibility_timer = 0; // Timer of invincibility
global.coins = 0; // Number of coins

// Controls
left_key = ord("A");
right_key = ord("D");
up_key = ord("W");
down_key = ord("S");