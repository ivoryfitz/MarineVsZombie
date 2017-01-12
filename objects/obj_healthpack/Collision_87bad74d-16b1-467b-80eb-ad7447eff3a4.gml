//Don't give hp if they don't need it
if(obj_player.hp < obj_player.maxHp) {
  obj_player.hp += hpToGive;
  //Don't overfill
  if (obj_player.hp > obj_player.maxHp)
   obj_player.hp = obj_player.maxHp;
  instance_destroy();
}