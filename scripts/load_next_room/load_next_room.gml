
function load_next_room(){
	global.level = import_level(get_next_room(global.level.level_string));
	room_restart()
}