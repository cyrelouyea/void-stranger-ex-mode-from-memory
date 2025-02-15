// TARGET: REPLACE
if (contents == 0 || contents == 1 || contents == 5 || contents == 6)
    sprite_index = spr_chest_regular
else if (contents == 2)
    sprite_index = spr_chest_sword
else
    sprite_index = spr_chest_small
if (contents == 2)
    sprite_index = spr_chest_small
draw_sprite(sprite_index, image_speed, x, y)
if (chest_flash == true)
    draw_sprite(spr_chest_regular_flash, flash_speed, x, y)
if (show_contents == false)
    return;
if (cont_y != 0)
    cont_y -= 0.25
if (contents != 0 && contents != 8)
    draw_sprite(spr_soulglow_big, glow_speed, x, (y + cont_y))
if (contents == 1)
    draw_sprite(spr_locust_idol, 0, x, (y + cont_y))
else if (contents == 2){
    if global.blade_style == 2 draw_sprite_part(asset_get_index("spr_ev_items_lev"), 0, 48, 0, 16, 16, (x - 8), (y - 8 + cont_y))		
	else draw_sprite_part(ev_get_burden_sprite(global.blade_style), 0, 48, 0, 16, 16, (x - 8), (y - 8 + cont_y))	
}
else if (contents == 3)
    draw_sprite_part(ev_get_burden_sprite(global.wings_style), 0, 32, 0, 16, 16, (x - 8), (y - 8 + cont_y))
else if (contents == 4)
    draw_sprite_part(ev_get_burden_sprite(global.memory_style), 0, 16, 0, 16, 16, (x - 8), (y - 8 + cont_y))
else if (contents == 6)
{
    draw_sprite(spr_locust_idol, 0, x, (y + cont_y))
    draw_set_font(fnt_text_12)
    draw_set_halign(fa_center)
    draw_text_color((x + 8), (y - 1 - cont_y), "x3", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x + 8), (y + 1 - cont_y), "x3", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x + 1 + 8), (y - cont_y), "x3", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x - 1 + 8), (y - cont_y), "x3", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x + 8), (y - cont_y), "x3", c_black, c_black, c_black, c_black, 1)
    draw_set_halign(fa_left)
}
else if (contents == 7)
    draw_sprite(spr_item_check, 2, (x - 8), (y - 8 + cont_y))
else if (contents == 9)
{
    draw_sprite(spr_locust_idol, 0, x, (y + cont_y))
    draw_set_font(fnt_text_12)
    draw_set_halign(fa_center)
    draw_text_color((x + 8), (y - 1 - cont_y), "x99", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x + 8), (y + 1 - cont_y), "x99", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x + 1 + 8), (y - cont_y), "x99", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x - 1 + 8), (y - cont_y), "x99", c_white, c_white, c_white, c_white, 1)
    draw_text_color((x + 8), (y - cont_y), "x99", c_black, c_black, c_black, c_black, 1)
    draw_set_halign(fa_left)
}
else if (contents == 10)
    draw_sprite_part(ev_get_burden_sprite(global.blade_style), 0, 48, 0, 16, 16, (x - 8), (y - 8 + cont_y))
else if (contents == 495)
    draw_sprite(spr_ev_swapper, 0, (x - 8), (y - 8 + cont_y))

