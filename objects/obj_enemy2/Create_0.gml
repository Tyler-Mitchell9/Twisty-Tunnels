/// @description Initilizes enemy variables

e1_health = 100; // Enemy health
h_speed = 0;  // Horizontal speed
v_speed = 0;  // Vertical speed
move_speed = 4;  // Speed at which the enemy moves

homeArea = 400; // Area of the hit radius
homeBase_x = x; // Home base coord
homeBase_y = y; // Home base coord
trackingState = false; // If enemy is currently tracking player

pathFollow = false; // Default path tracking state