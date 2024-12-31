/// @description Initilizes enemy variables

e1_health = 100; // Enemy health
h_speed = 0;  // Horizontal speed
v_speed = 0;  // Vertical speed
move_speed = 4;  // Speed at which the enemy moves

homeArea = 300; // Area of the home base (slightly less than max tracking)
tracking_radius = 400; // Tracking radius
homeBase_x = x; // Home base coord
homeBase_y = y; // Home base coord
trackingState = false; // If enemy is currently tracking

pathFollow = false; // Default path tracking state