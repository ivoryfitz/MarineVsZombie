scr_animate();

//Player Movement
//Note: Origin is Top Left [x=0, y=0])

var xDirection, yDirection;
var leftPressed = false;
var rightPressed = false;
var upPressed = false;
var downPressed = false;
var idx;

for(idx = 0; idx < array_length_1d(leftKeys); idx++) {
  var key = leftKeys[idx];
  leftPressed = leftPressed || keyboard_check(key);
}


for(idx = 0; idx < array_length_1d(rightKeys); idx++) {
  var key = rightKeys[idx];
  rightPressed = rightPressed || keyboard_check(key);
}


for(idx = 0; idx < array_length_1d(upKeys); idx++) {
  var key = upKeys[idx];
  upPressed = upPressed || keyboard_check(key);
}


for(idx = 0; idx < array_length_1d(downKeys); idx++) {
  var key = downKeys[idx];
  downPressed = downPressed || keyboard_check(key);
}

xDirection = rightPressed - leftPressed;
yDirection = downPressed - upPressed;

hspeed = xDirection * playerSpeed;
vspeed = yDirection * playerSpeed;

//Player Death
if (hp <= 0) game_end();

//Collisions
if hspeed != 0
if !place_free(x + hspeed, y) {
  if (hspeed > 0) move_contact_solid(0, hspeed);
  if (hspeed < 0) move_contact_solid(180, hspeed);
  hspeed = 0;
}

if vspeed != 0
if !place_free(x, y + vspeed) {
  if (vspeed > 0) move_contact_solid(270, vspeed);
  if (vspeed < 0) move_contact_solid(90, vspeed);
  vspeed = 0;
}
