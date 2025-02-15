// TARGET: REPLACE
counter++
if (counter == 16)
    white_alpha += 0.25
if (counter == 32)
    white_alpha += 0.25
if (counter == 48)
    white_alpha += 0.25
if (counter == 64)
{
    white_alpha += 0.25
    global.inventory = false
}
if (counter == 160)
    msg_color = 12632256
if (counter == 192)
    msg_color = 8421504
if (counter == 224)
    msg_color = 0
if (counter == 320)
{
}
if (counter == 400)
{
}
if (counter == 416)
    ir_mul += 1
if (counter == 432)
    ir_mul += 1
if (counter == 448)
    ir_mul += 1
if (counter == 528)
{
    if (room == rm_ev_level) {
        if (global.level.level_string == global.room_exxx_birch) {
            ini_open(global.save_directory + "exmemory/save.vs")
            ini_write_string("save", "Room", global.room_exxx_birch_alt)
            ini_write_string("save", "Fake Ending", "1")
            ini_close()
            game_end()
        } else if (global.level.level_string == global.room_e114) {
            load_room_from_string(global.room_e000_alt)
        } else {
            load_room_from_string(global.room_e000)
        }
    }
    else
    {
        global.ambience_shutdown = false
        global.music_is_playing = false
        with (obj_inventory)
            void_ending = false
        if (global.stranger == 0)
        {
            if (exmode_check == 0)
            {
                if (global.final_credits == 0 && global.firstcifreset == 0)
                {
                    global.firstcifreset = 1
                    room_goto(rm_intro)
                }
                else
                    room_goto(rm_1intro)
            }
            else
                room_goto(rm_test2_000)
        }
        else if (global.stranger == 1)
        {
            if (global.final_credits == 0 && global.firstcifreset == 0)
            {
                global.firstcifreset = 1
                room_goto(rm_house_005)
            }
            else
                room_goto(rm_1intro)
        }
        else if (global.stranger == 2)
            room_goto(rm_1intro)
        if (global.cc_state == 0)
        {
            scr_reset_values_cif()
            if (exmode_check != 0)
            {
                global.cantsave = false
                global.ex_check = 0
                global.infinity_check = 0
                global.voidrod_get = true
                global.voider = true
                ds_grid_set(obj_inventory.ds_player_info, 12, 2, true)
                ds_grid_set(obj_inventory.ds_player_info, 0, 2, "E")
                ds_grid_set(obj_inventory.ds_player_info, 1, 2, 0)
            }
        }
        else
        {
            with (obj_cc_check)
            {
                if (check_state == 1)
                    check_state = 2
            }
        }
    }
}
if (counter == 530)
{
    with (obj_cutscene_intro)
        tran_alpha = 0
    instance_destroy()
    counter = 0
}
