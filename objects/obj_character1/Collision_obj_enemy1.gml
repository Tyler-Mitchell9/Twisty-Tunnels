/// @description Collision with enemy1 decreases character health


if (invincibility_timer <= 0) { // Check if the character is not currently invincible
    c1_health -= 50; // Decreases health
    invincibility_timer = invincibility_duration; // Start invincibility timer
}