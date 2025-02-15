// TARGET: REPLACE
ds_grid_set(obj_inventory.ds_player_info, 1, 2, ((ds_grid_get(obj_inventory.ds_player_info, 1, 2)) + 1))
ds_grid_set(obj_inventory.ds_player_info, 7, 0, 0)
ds_grid_set(obj_inventory.ds_player_info, 22, 0, 0)
global.jumpscare = 0
global.player_blink = 1
global.justice_stall = 0
global.exit_target = 0
global.bonus_secret = 0
global.failure = 0
scr_ketutusreset()
global.ketutus_cooldown = false
global.save_newroom = 1

if (ds_grid_get(obj_inventory.ds_player_info, 1, 3) != 0)
    ds_grid_set(obj_inventory.ds_player_info, 1, 3, 1)

if instance_exists(obj_rest)
    instance_destroy(obj_rest)


load_next_room()