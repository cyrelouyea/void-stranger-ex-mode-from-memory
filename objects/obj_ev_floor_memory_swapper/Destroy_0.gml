if (global.cif_destroy != 0)
    return;
if instance_exists(asset_get_index("obj_player"))
{
    if (asset_get_index("obj_player").state == (13 << 0) && destroyer_id == 1)
    {
        ds_grid_set(asset_get_index("obj_inventory").ds_player_info, 1, 3, 9)
        with (asset_get_index("obj_player"))
        {
            var new_tile_str = string_insert("N", tile_str, string_length(tile_str))
            tile_str = new_tile_str
            show_debug_message(tile_str)
        }
    }
}