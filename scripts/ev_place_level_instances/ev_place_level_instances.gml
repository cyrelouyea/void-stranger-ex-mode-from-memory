function ev_place_level_instances(level) {
	global.wall_tilemaps = array_create(wall_types.size)
	global.edge_tilemaps = array_create(edge_types.size)
	
	global.wall_tilemaps[wall_types.normal] = layer_tilemap_create("Tiles_Wall", 0, 0, global.tileset_1, 224, 144)
	global.edge_tilemaps[edge_types.normal] = layer_tilemap_create("Tiles_Edge", 0, 0, global.tileset_edge, 224, 144)
	global.edge_tilemaps[edge_types.dis] = layer_tilemap_create("Tiles_DIS_Edge", 0, 0, global.tileset_edge_dis, 224, 144)

	global.wall_tilemaps[wall_types.mon] = layer_tilemap_create("Tiles_Mon_Wall", 0, 0, global.tileset_mon, 224, 144)
	global.wall_tilemaps[wall_types.dis] = layer_tilemap_create("Tiles_DIS_Wall", 0, 0, global.tileset_dis, 224, 144)
	global.wall_tilemaps[wall_types.ex] = layer_tilemap_create("Tiles_EX_Wall", 0, 0, global.tileset_ex, 224, 144)

	for (var i = 0; i < 9; i++) {
		for (var j = 0; j < 14; j++) {
			var tile_state = level.tiles[i][j];
			var tile = tile_state.tile
			if i != 8 {
				tile.iostruct.place(tile_state, i, j, global.wall_tilemaps, global.edge_tilemaps, level)
			}
			var object_state = level.objects[i][j];
			var object = object_state.tile
			object.iostruct.place(object_state, i, j, global.wall_tilemaps, global.edge_tilemaps, level)
		}
	}
	
	if (global.level.level_string == global.room_e061_memory) {
		with (asset_get_index("obj_chest_small")) {
			chest_secret = 1;
		}
	}
	else if (global.level.level_string == global.room_exxx_birch_alt) {
		with (asset_get_index("obj_rest")) {
			withered = true;
		}
	}
}

