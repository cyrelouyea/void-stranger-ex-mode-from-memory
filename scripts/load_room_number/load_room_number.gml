// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function load_room_number(room_number){
	global.level = import_level(get_room_from_number(room_number));
	room_restart()
}