draw_sprite_ext(asset_get_index("spr_white_screen"), 0, 0, 0, 1, 1, 0, c_white, white_alpha)

draw_sprite_ext(asset_get_index("spr_white_screen"), 0, floor(left_bar_x), 0, 1, 1, 0, c_black, 1)
draw_sprite_ext(asset_get_index("spr_white_screen"), 0, floor(right_bar_x), 0, 1, 1, 0, c_black, 1)

draw_sprite_ext(asset_get_index("spr_white_screen"), 0, 0, 0, 1, 1, 0, c_black, black_alpha)