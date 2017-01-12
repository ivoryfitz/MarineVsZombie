//Draw Sprites
//Draw BG
draw_sprite(spr_store_description_bg, 0, x - 55, y);
draw_self();
//Draw Item Sprite
draw_sprite(global.weaponArray[array, 8], 0, x + sprite_get_width(spr_store_description_bg) - 55, y);

//Draw Text
draw_set_font(font_ui_large);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//Item Name Text
draw_set_font(font_ui_medium);
draw_set_halign(fa_left);
draw_text(x + 90, y + 20, global.weaponArray[array, 12]);

//Item Description
draw_set_font(font_ui_small);
draw_set_halign(fa_left);
draw_text(x + 90, y + 75, global.weaponArray[array, 11]);

//Current Ammo
draw_set_font(font_ui_small);
draw_set_halign(fa_left);
draw_text(x - 35, y + 75, "Current:\n" + string(global.weaponArray[array, 7]));


//Buy Ammo Amount
draw_set_font(font_ui_medium);
draw_set_halign(fa_left);
//Shadow
draw_set_color(c_dkgray);
draw_text(x + 368, y + 13, "x" + string(global.weaponArray[array, 10]));
draw_set_color(c_white);
draw_text(x + 365, y + 10, "x" + string(global.weaponArray[array, 10]));


//Buy Button Text
draw_set_font(font_ui_large);
draw_set_halign(fa_center);
draw_text(x, y, "Buy $" + string(global.weaponArray[array, 9]));