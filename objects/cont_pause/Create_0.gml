var cam = view_get_camera(view_current);
var camX = camera_get_view_x(cam);
var camY = camera_get_view_y(cam);
var camW = camera_get_view_width(cam);
var camH = camera_get_view_height(cam);


window_set_cursor(cr_default);
pauseSurface = surface_create(camW, camH);

surface_set_target(pauseSurface);

draw_clear_alpha(c_black, 0);

with(all) {
  if (visible) {
    var tempX = x;
    var tempY = y;
    x = x - camX;
    y = y - camY;
    event_perform(ev_draw, 0);
    x = tempX;
    y = tempY;
  }
}

surface_reset_target();

instance_deactivate_all(true);

//Store Code
button1 = instance_create_layer(camX + camW / 2 - 162, camY + camH / 2 - 184, "Instances", obj_store_buy_button);
button1.array = 0;

button2 = instance_create_layer(camX + camW / 2 - 162, camY + camH / 2 - 9, "Instances", obj_store_buy_button);
button2.array = 1;

button3 = instance_create_layer(camX + camW / 2 - 162, camY + camH / 2 + 166, "Instances", obj_store_buy_button);
button3.array = 0;


visible = true;