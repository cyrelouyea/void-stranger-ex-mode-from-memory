if keyboard_check(vk_control) && keyboard_check_pressed(ord("N")) {
	load_next_room();
}

if global.level.level_string == global.room_trailer_room {
	global.exitbar_state = 7;	
}