///scr_animate();

//Animate
if (hspeed != 0 || vspeed != 0) {
  image_speed = 0.16;
} else {
  image_index = 0;
  image_speed = 0;
}

//Flip sprite
if (hspeed < 0) {
  image_xscale = -1;
}

if (hspeed > 0) {
  image_xscale = 1;
}

//Set Depth
depth = -y;