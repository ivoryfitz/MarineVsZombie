///@description 2d Array for weapon data

/*
[i, 0] = Name of Item
[i, 1] = Sprite Index
[i, 2] = Rate of Fire
[i, 3] = Ammo Object Index
[i, 4] = Muzzle Offset (For Bullet Creation)
[i, 5] = xOffset (Gun Placement on Player)
[i, 6] = yOffset (Gun Placement on Player)
[i, 7] = Ammo Amount
[i, 8] = Item Store Sprite
[i, 9] = Item Store Price (Price per Ammo Pack)
[i, 10] = Item Store Quantity (Bullets in a Pack)
[i, 11] = Item Store Description
[i, 12] = Item Store Name
[i, 13] = UI Image

*/

var i, j;

//Init Empty Array
for (i = 0; i < global.weapons; i++) {
  for (j = 0; j < 14; j++) {
    global.weaponArray[i, j] = 0;
  }
}

// [0] Machine Gun
global.weaponArray[0,0] = "Machine Gun";
global.weaponArray[0,1] = spr_machinegun;
global.weaponArray[0,2] = 10;
global.weaponArray[0,3] = obj_machinegun_bullet; 
global.weaponArray[0,4] = 43;
global.weaponArray[0,5] = 0;
global.weaponArray[0,6] = -15;
global.weaponArray[0,7] = 50;
global.weaponArray[0,8] = spr_store_bullets;
global.weaponArray[0,9] = 20;
global.weaponArray[0,10] = 50;
global.weaponArray[0,11] = "Speed: Fast\nDamage: Medium";
global.weaponArray[0,12] = "AK-47 Rounds";
global.weaponArray[0,13] = spr_ui_ak47;


// [1] Bazooka
global.weaponArray[1,0] = "Bazooka";
global.weaponArray[1,1] = spr_bazooka;
global.weaponArray[1,2] = 120;
global.weaponArray[1,3] = obj_bazooka_bullet; 
global.weaponArray[1,4] = 40;
global.weaponArray[1,5] = 0;
global.weaponArray[1,6] = -20;
global.weaponArray[1,7] = 5;
global.weaponArray[1,8] = spr_store_missiles;
global.weaponArray[1,9] = 35;
global.weaponArray[1,10] = 10;
global.weaponArray[1,11] = "Speed: Low\nDamage: High";
global.weaponArray[1,12] = "Bazooka Missiles";
global.weaponArray[1,13] = spr_ui_bazooka;




