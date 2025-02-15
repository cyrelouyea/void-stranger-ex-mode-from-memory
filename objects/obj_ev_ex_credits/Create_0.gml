
instance_create_layer(0, 0, "Text", asset_get_index("obj_ev_ex_credits_text"))

gray_mini = instance_create_layer(0, 0, "Instances", asset_get_index("obj_ev_ex_gray_ending_mini"))
gray_mini.visible = false
gray_mini.real_x = room_width / 2
gray_mini.real_y = -16

gray_big = instance_create_layer(0, 0, "Instances", asset_get_index("obj_ev_ex_gray_ending"))
gray_big.visible = false
gray_big.real_x = room_width / 2
gray_big.real_y = room_height / 2

start_1 = 12.0
start_2 = 15.1
start_3 = 123.3

white_alpha = 1
black_alpha = 0

left_bar_x = -room_width - 10
right_bar_x = room_width + 10
bar_closing_x = 0
counter = 0

