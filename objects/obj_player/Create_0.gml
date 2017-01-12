//@description Variable Instantiation

//Create Camera
instance_create_layer(x, y, "Instances", cont_view);


// Movement Keys
leftKeys = [ord("A"), vk_left];
rightKeys = [ord("D"), vk_right];
upKeys = [ord("W"), vk_up];
downKeys = [ord("S"), vk_down];

// Player Speed
playerSpeed = 3;

//health
maxHp = 100
hp = maxHp;

//Weapon Data
weapon = 0;
xWeaponOffset = global.weaponArray[weapon, 5];
yWeaponOffset = global.weaponArray[weapon, 6]
myGun = instance_create_layer(x + xWeaponOffset, y + yWeaponOffset, layer, obj_gun);
instance_create_layer(x, y, "Instances", obj_sight);