//Enemy Spawn Rate
spawnRate = random_range(1 * room_speed, 3 * room_speed);
alarm[0] = spawnRate;

//Healthpack Spawn Rate
healthSpawnRate = 30 * room_speed;
healthTimeDiff = 5 * room_speed;
alarm[1] = healthSpawnRate + random_range(-healthTimeDiff, healthTimeDiff);