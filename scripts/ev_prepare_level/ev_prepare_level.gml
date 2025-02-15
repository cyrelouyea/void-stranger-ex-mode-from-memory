function ev_prepare_level(level) {
	var inv = asset_get_index("obj_inventory")
	
	var room_number = get_number_from_room(level.level_string)
	
	if room_number == -1 {
		ds_grid_set(inv.ds_player_info, 0, 2, "E???");
		ds_grid_set(inv.ds_player_info, 1, 2, -1);
	} else {
		ds_grid_set(inv.ds_player_info, 0, 2, "E");
		ds_grid_set(inv.ds_player_info, 1, 2, room_number);
	}
	
	if level.music == "msc_test2" {
		asset_get_index("scr_play_music")(asset_get_index("scr_placeholder_music")(), true, 1);
	} else {
		global.jukebox_song = -1;
		asset_get_index("scr_stop_music")(true, 4);
	}
}

