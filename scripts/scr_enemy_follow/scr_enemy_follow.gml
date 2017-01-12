///scr_enemy_follow();

var dist = point_distance(x, y, obj_player.x, obj_player.y);

if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, true, true)) {
  alerted = true;
}

if (alerted && (dist <= aggroRange) && (dist > attackRange)) {
  sprite_index = spr_zombie1_follow;
  mp_potential_step(obj_player.x, obj_player.y, enemySpeed, false);
  speed = enemySpeed;
} else if (alerted && dist <= attackRange) {
  speed = 0;
  state = scr_enemy_attack;
} else {
  sprite_index = spr_zombie1_idle;
  alerted = false;
  state = scr_enemy_idle;
}