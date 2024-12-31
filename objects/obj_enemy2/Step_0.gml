/// @description Enemy omnidirectional movement

// Ensure the player exists
if (instance_exists(obj_character1)) {
    // Calculate distance from player to home base
    var dist_to_homeBase = point_distance(obj_character1.x, obj_character1.y, homeBase_x, homeBase_y);

    // Check if the player is within the home base area
    if (dist_to_homeBase <= homeArea) {
        trackingState = true; // Start tracking the player
		sprite_index = spr_enemy2_focused;
    } else {
		trackingState = false;
		sprite_index = spr_enemy2;
	}
	
    // If the enemy is tracking the player
    if (trackingState) {
        // Get the direction to the player
        var direction_to_player = point_direction(x, y, obj_character1.x, obj_character1.y);

        // Calculate the intended movement along each axis
        var move_x = lengthdir_x(move_speed, direction_to_player);
        var move_y = lengthdir_y(move_speed, direction_to_player);

        // Check if the player has moved beyond tracking radius
        if (dist_to_homeBase > homeArea) {
            trackingState = false; // Stop tracking and return to home base
        }
    }
}
