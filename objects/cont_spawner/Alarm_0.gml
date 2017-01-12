///@description Enemy Spawner
var xSpawnAt, ySpawnAt, onPlayer, onWall, onWallCol;
var newEnemy = instance_create_layer(0, 0, "Instances", obj_enemy);
with (newEnemy) {

  do {
    xSpawnAt = random_range(sprite_width, room_width - sprite_width);
    ySpawnAt = random_range(sprite_height,  room_height - sprite_height);
    onPlayer = place_meeting(xSpawnAt, ySpawnAt, obj_player);
    onWall = place_meeting(xSpawnAt, ySpawnAt, obj_wall);
    onWallCol = place_meeting(xSpawnAt, ySpawnAt, obj_wall_col);
  } until (!onPlayer && !onWall && !onWallCol);

  x = xSpawnAt;
  y = ySpawnAt;

}
alarm[0] = spawnRate;