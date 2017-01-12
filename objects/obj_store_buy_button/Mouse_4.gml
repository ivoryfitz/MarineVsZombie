//Check If Can Afford
if (global.cash >= global.weaponArray[array, 9]) {
  //Add Ammo
  global.weaponArray[array, 7] += global.weaponArray[array, 10];
  //Remove Cash
  global.cash -= global.weaponArray[array, 9];
}