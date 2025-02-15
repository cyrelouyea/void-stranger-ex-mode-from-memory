
delta_sec = (current_time - global.start_song_time) / 1000

if (delta_sec <= start_1) {
	gray_mini.real_y += 0.08 * 6 * (delta_time / 100_000)
	gray_mini.visible = true
	gray_mini.visible = true
	white_alpha = 1
	black_alpha = 0
	
	left_bar_x += 0.17 * 6 * (delta_time / 100_000)
	right_bar_x -= 0.17 * 6 * (delta_time / 100_000)
} else if (delta_sec > start_1 and delta_sec <= start_2) {
	gray_mini.visible = false
	gray_big.visible = false
	white_alpha = 0
	black_alpha = 1
} else if (delta_sec > start_2 and delta_sec <= start_3) {
	gray_mini.visible = false
	gray_big.visible = true
	white_alpha = 1
	black_alpha = 0
	left_bar_x = (-room_width+56) + 4 * sin(counter/120) + bar_closing_x
	right_bar_x = (room_width-56) - 4 * sin(counter/120) - bar_closing_x
	bar_closing_x += 0.008 * 6.3 * (delta_time / 100_000)
} else {
	gray_mini.visible = false
	gray_big.visible = false
	white_alpha = 0
	black_alpha = 1
}


counter += 1