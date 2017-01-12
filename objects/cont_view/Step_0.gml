//x += (obj_player.x - x) / 20;
//y += (obj_player.y - y) / 20;

x = clamp(mean(obj_player.x, mouse_x), obj_player.x - 400, obj_player.x + 400);
y = clamp(mean(obj_player.y, mouse_y), obj_player.y - 400, obj_player.y + 400);

