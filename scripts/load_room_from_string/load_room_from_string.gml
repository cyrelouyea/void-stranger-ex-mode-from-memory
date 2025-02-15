// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function load_room_from_string(level_string){
	global.level = import_level(level_string);
	room_restart();
}