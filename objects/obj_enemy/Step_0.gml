//States
script_execute(state);

//Enemy Death
if (hp <= 0) {
  instance_destroy();
  global.score += pointValue;
  var i, dropRate;
  dropRate = random(5);
  for(i = 0; i < dropRate; i++) {
    instance_create_layer(x, y, "Instances", obj_coin);
  }
}

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