draw_self();
var percentage = (hp / maxHp) * 100;

var x1 = x - sprite_xoffset;
var y1 = y - sprite_yoffset;
var x2 = x + sprite_xoffset;
var y2 = y - sprite_yoffset + 6

//draw_healthbar(x1, y1, x2, y2, percentage, c_black, c_red, c_green, anchorSide, true, true);
draw_healthbar(
  x1,
  y1,
  x2, 
  y2, 
  percentage, 
  c_black, 
  c_red, 
  c_green, 
  facing, 
  true, 
  true
);