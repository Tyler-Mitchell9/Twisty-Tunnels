/// @description Enemy omnidirectional movement

// Ensure the player exists
if (instance_exists(obj_character1)) {
    // Calculate distance from player to home base
    var dist_to_homeBase = point_distance(obj_character1.x, obj_character1.y, homeBase_x, homeBase_y);

    // Check if the player is within the home base area
    if (dist_to_homeBase <= homeArea) {
        trackingState = true; // Start tracking the player
    }
	
    // If the enemy is tracking the player
    if (trackingState) {
        // Get the direction to the player
        var direction_to_player = point_direction(x, y, obj_character1.x, obj_character1.y);

        // Calculate the intended movement along each axis
        var move_x = lengthdir_x(move_speed, direction_to_player);
        var move_y = lengthdir_y(move_speed, direction_to_player);

        // Handle horizontal movement
        x += move_x;
        if (place_meeting(x, y, obj_wall1)) {
            x -= move_x;
        }

        // Handle vertical movement
        y += move_y;
        if (place_meeting(x, y, obj_wall1)) {
            y -= move_y;
        }

        // Check if the player has moved beyond tracking radius
        if (dist_to_homeBase > tracking_radius) {
            trackingState = false; // Stop tracking and return to home base
        }
    } else {
        // If not tracking, move back to home base
        var direction_to_home = point_direction(x, y, homeBase_x, homeBase_y);

        // Calculate the intended movement along each axis to home base
        var move_x = lengthdir_x(move_speed, direction_to_home);
        var move_y = lengthdir_y(move_speed, direction_to_home);

        // Handle horizontal movement
        x += move_x;
        if (place_meeting(x, y, obj_wall1)) {
            x -= move_x;
        }

        // Handle vertical movement
        y += move_y;
        if (place_meeting(x, y, obj_wall1)) {
            y -= move_y;
        }
    }
}
