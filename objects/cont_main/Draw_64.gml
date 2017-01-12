///Draw UI


//Draw BG
var wport = view_get_wport(view_current);
var hport = view_get_hport(view_current);
draw_sprite(spr_ui_topleft, 1, 0, 0);
draw_sprite(spr_ui_bottomright, 1, wport, hport);

var vx = 0;
var vy = 0;

//draw hp bar
draw_sprite(spr_healthbar_bg, 1, vx + 46, vy + 34);
var percentHp = obj_player.hp / obj_player.maxHp;
draw_sprite_ext(spr_healthbar_inner, 1, vx + 46, vy + 34, percentHp, 1, 0, c_white, 1);
draw_sprite(spr_healthbar_border, 1, vx + 15, vy + 15);

//draw cash bg
draw_sprite(spr_ui_cashbg, 1, 250, 15);

//draw weapon image
draw_sprite(global.weaponArray[obj_player.weapon, 13], 1, wport - 165, hport - 85);

//Draw health text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(font_ui_large);
draw_text(137, 45, string(obj_player.hp) + "/100");

//Draw cash text
draw_set_color(c_yellow);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(font_ui_cash);
draw_text(470, 45, "$" + string(global.cash));

//Draw ammo text
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(font_ui_large);
draw_text(wport - 110, hport - 85, "x" + string(global.weaponArray[obj_player.weapon, 7]));

//Draw gun name
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(font_ui_large);
draw_text(wport - 12, hport - 25, string(global.weaponArray[obj_player.weapon, 0]));
