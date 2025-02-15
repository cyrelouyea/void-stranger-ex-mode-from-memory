// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function load_secret_room() {
	
	inv = asset_get_index("obj_inventory")
	
	switch global.level.level_string {
		case global.room_e001: {
			var player_x = floor(asset_get_index("obj_player").x/16)
			var player_y = floor(asset_get_index("obj_player").y/16)
			
			
			if player_y == 1 and player_x == 1 {
				global.level = import_level(global.room_exxx_sword)
				ds_grid_set(inv.ds_player_info, 0, 2, "E???")
			} else if player_y == 1 and player_x == 4 {
				global.level = import_level(global.room_exxx_memory)
				ds_grid_set(inv.ds_player_info, 0, 2, "E???")
			} else if player_y == 1 and player_x = 12 {
				global.level = import_level(global.room_exxx_wings)
				ds_grid_set(inv.ds_player_info, 0, 2, "E???")
			}
			
			break
		}
		case global.room_e016_final:
			global.level = import_level(global.room_exxx_escort_1)
			ds_grid_set(inv.ds_player_info, 0, 2, "E???")
			break
		case global.room_exxx_escort_1:
			global.level = import_level(global.room_exxx_escort_2)
			break
		case global.room_exxx_escort_2:
			global.level = import_level(global.room_exxx_escort_3)
			break
		case global.room_exxx_escort_3:
			global.level = import_level(global.room_exxx_escort_4)
			break
		case global.room_exxx_escort_4:
			global.level = import_level(global.room_exxx_escort_5)
			break
		case global.room_exxx_escort_5:
			global.level = import_level(global.room_exxx_escort_6)
			break
		case global.room_exxx_escort_6:
			global.level = import_level(global.room_exxx_escort_7)
			break
		case global.room_exxx_escort_7:
			if global.fake_ending
				global.level = import_level(global.room_exxx_birch_alt)
			else
				global.level = import_level(global.room_exxx_birch)
			break
		case global.room_exxx_birch:
		case global.room_exxx_birch_alt:
			global.level = import_level(global.room_exxx_extra_beginning)
			break
		default:
			global.level = import_level(global.room_e000);
			break
	}
	
	room_restart()
}