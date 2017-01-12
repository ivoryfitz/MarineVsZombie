if (state == scr_enemy_idle) {
  var angle = random(359);
  var idleSpeed = enemySpeed / 2;

  direction = angle;
  speed = idleSpeed;
}
