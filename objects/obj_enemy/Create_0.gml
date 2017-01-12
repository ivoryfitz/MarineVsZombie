//Variables
maxHp = 100;
hp = maxHp;
pointValue = 10;
enemySpeed = 1;
aggroRange = 240;
attackRange = 32;
state = scr_enemy_idle;
alerted = false;
// 0 = left, 1 = right, 2= top, 3 = bottom
facing = 0;

//Fire Alarm Immediately in the very next frame (Note: Cannot be 0)
alarm[0] = 1;