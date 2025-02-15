event_inherited()
global.mouse_layer++;
with (asset_get_index("obj_ev_pack_editor"))
	on_menu_create();

new_window(0, 0, asset_get_index("obj_ev_level_select"), {
	mode : level_selector_modes.selecting_level_for_pack,
	layer_num : global.mouse_layer,
	buttons_layer : "LevelSelectWindowElements"
})

pack_editor_inst().select(pack_things.nothing)