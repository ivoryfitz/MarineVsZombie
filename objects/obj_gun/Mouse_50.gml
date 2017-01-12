/// @description Fire Bullets
if(!firing && global.weaponArray[obj_player.weapon, 7] > 0) {
  firing = true;
  alarm[0] = global.weaponArray[obj_player.weapon, 2];
  instance_create_layer(
    x + lengthdir_x(global.weaponArray[obj_player.weapon, 4], image_angle),
    y + lengthdir_y(global.weaponArray[obj_player.weapon, 4], image_angle),
    "Instances",
    global.weaponArray[obj_player.weapon, 3]
  );
  global.weaponArray[obj_player.weapon, 7] -= 1;
}
