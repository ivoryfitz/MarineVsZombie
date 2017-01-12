///@description Animation for enemies

var dist = point_distance(x, y, obj_player.x, obj_player.y);

if dist <= attackRange {
  image_speed = 0.16;
  //Flip sprite based on player location
  if (obj_player.x < x) {
    image_xscale = -1;
    facing = 1;
  }
  if (obj_player.x > x){
   facing = 0;
   image_xscale = 1;
  }
} else if (x != xprevious || y != yprevious) {
  image_speed = 0.16;
} else {
  image_speed = 0;
  image_index = 0;
}

//Flip sprite based on movement
if (hspeed < 0) {
  facing = 1;
  image_xscale = -1;
}
if (hspeed > 0) {
  facing = 0;
  image_xscale = 1;
}

//Set Depth
depth = -y;