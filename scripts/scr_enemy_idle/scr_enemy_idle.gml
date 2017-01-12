///scr_enemy_static();
var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (dist <= aggroRange) {
  state = scr_enemy_follow;
} else {
  if (alarm[0] = -1) {
    alarm[0] = 2 * room_speed;
  }
}