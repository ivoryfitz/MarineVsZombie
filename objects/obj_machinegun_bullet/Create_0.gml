/// @description Set Bullet Speed and Direction
var bulletSpeed = 10;
move_towards_point(obj_sight.x, obj_sight.y, bulletSpeed);
image_angle = point_direction(obj_player.x, obj_player.y, obj_sight.x, obj_sight.y);
damage = 20;