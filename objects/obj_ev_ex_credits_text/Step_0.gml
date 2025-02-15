delta_sec = (current_time - global.start_song_time) / 1000

if (keyboard_check_pressed(vk_numpad0)) {
	show_message(delta_sec)
	show_message(global.start_song_time)
	show_message(current_time)
}

if delta_sec >= 18 and delta_sec < 28 {
	text_str = "- EX Mode from Memory -"
} 
else if delta_sec >= 28 and delta_sec < 33 {
	text_str = "by Cyrelouyea"
} 
else if delta_sec >= 43 and delta_sec < 48 {
	text_str = "- Original Game By -"
} 
else if delta_sec >= 48 and delta_sec < 53 {
	text_str = "System Erasure"
} 
else if delta_sec >= 63 and delta_sec < 68 {
	text_str = "- Made With -"
} 
else if delta_sec >= 68 and delta_sec < 73 {
	text_str = "Endless Void"
} 
else if delta_sec >= 73 and delta_sec < 78 {
	text_str = "GameMaker"
} 
else if delta_sec >= 78 and delta_sec < 83 {
	text_str = "UndertaleModTool"
} 
else if delta_sec >= 93 and delta_sec < 98 {
	text_str = "- Thanks -"
} 
else if delta_sec >= 98 and delta_sec < 103 {
	text_str = "System Erasure Discord"
} 
else if delta_sec >= 103 and delta_sec < 108 {
	text_str = "Endless Void Contributors"
}
else if delta_sec >= 108 and delta_sec < 113 {
	text_str = "And System Erasure"
}
else if delta_sec >= 129 {
	text_str = "Thank you for playing!"
}
else {
	text_str = ""	
}

if (delta_sec >= 135) {
	shift_final_y -= 0.2 * (delta_time / 100_000)
}

if (delta_sec >= 175) {
	if (!saved) {
		global.final_ending = true
		ini_open(global.save_directory + "exmemory/save.vs")
		ini_write_string("save", "Final Ending", global.final_ending ? "1" : "0")
		ini_close()
		saved = true
	}
	global.exitbar_state = 6
}
