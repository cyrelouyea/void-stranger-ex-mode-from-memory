draw_set_font(asset_get_index("fnt_text_12"))
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(c_white)


draw_text_shadow(room_width / 2, floor(room_height / 2 + shift_final_y), text_str)
