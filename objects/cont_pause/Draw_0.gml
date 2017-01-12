var cam = view_get_camera(view_current);
var camX = camera_get_view_x(cam);
var camY = camera_get_view_y(cam);
var camW = camera_get_view_width(cam);
var camH = camera_get_view_height(cam);

var camXCenter = camX + camW / 2;
var camYCenter = camY + camH / 2;

if (surface_exists(pauseSurface)) {
  draw_surface(pauseSurface, camX, camY);
}

//Fade background
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(camX, camY, camX + camW, camY + camH, false);
draw_set_alpha(1);

//Draw Item Store Background
draw_set_color(c_white);
draw_sprite(spr_store_bg, 0, camXCenter, camYCenter);

//Draw Cash Background
draw_set_color(c_white);
draw_sprite(spr_store_cash_border, 0, camXCenter, camYCenter - 286);

//Draw Cash Title Text
draw_set_halign(fa_center);
draw_set_font(font_ui_small);
draw_text(camXCenter - 79, camYCenter - 311, "My Cash: ");

//Draw Cash Text
draw_set_halign(fa_right);
draw_set_color(c_yellow);
draw_set_font(font_store_cash);
draw_text(camXCenter + 153, camYCenter - 276, "$" + string(global.cash));
draw_set_color(c_white);

//Draw Return Text
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_font(font_ui_small);
draw_text(camXCenter, camYCenter + 320, "Press Space to Return");
draw_set_color(c_white);