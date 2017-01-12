sightDir = point_direction(obj_player.x, obj_player.y, x, y);
sightDis = point_distance(obj_player.x, obj_player.y, x, y);

if sightDis <= 100 {
  x = obj_player.x + lengthdir_x(100, sightDir);
  y = obj_player.y + lengthdir_y(100, sightDir);
}