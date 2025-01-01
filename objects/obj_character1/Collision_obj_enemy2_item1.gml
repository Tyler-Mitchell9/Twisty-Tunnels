/// @description Collision with enemy2item1 decreases character health

if (invincibility_timer <= 0) { // Check if the character is not currently invincible
    c1_health -= 25; // Decreases health
    invincibility_timer = invincibility_duration; // Start invincibility timer
    
    // Destroy the arrow instance when it hits the player
    instance_destroy(other);  // 'other' refers to the arrow instance
}
