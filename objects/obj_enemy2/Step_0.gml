/// @description Enemy shooting behavoir

// Ensure the player exists
if (instance_exists(obj_character1)) {
    // Calculate distance from player to home base
    var dist_to_homeBase = point_distance(obj_character1.x, obj_character1.y, homeBase_x, homeBase_y);

    // Check if the player is within the home base area
    if (dist_to_homeBase <= homeArea) {
        trackingState = true; // Start tracking the player
		sprite_index = spr_enemy2_focused; // Change sprite if tracking
    } else {
		trackingState = false;
		sprite_index = spr_enemy2; // Sprite back to normal if not tracking
		shootCooldown = 0;
	}
	
    // If the enemy is tracking the player
    if (trackingState) {
        // Shoot an arrow if cooldown is over
        if (shootCooldown <= 0) {  // If cooldown is done
            var arrow = instance_create_layer(x, y, "Instances_1", obj_enemy2_item1);  // Create the arrow at the enemy's position
            var direction_to_player = point_direction(x, y, obj_character1.x, obj_character1.y);  // Get direction to player
            arrowDirection = direction_to_player;  // Set the direction of the arrow towards the player
            
			// Cooldown for shooting
			shootCooldown = room_speed * 1;
        } else {
			shootCooldown--;
		}
    }
}
