// TARGET: REPLACE
if instance_exists(obj_player)
{
    if (ds_grid_get(obj_player.ds_exit_lock, 1, 0) == ds_grid_get(obj_player.ds_exit_lock, 1, 1))
    {
        if (hidden == true)
        {
            if place_meeting(x, y, obj_player_parent)
                cheese_counter++
        }
        hidden = false
        if (ds_grid_get(obj_player.ds_exit_lock, 1, 0) != 0)
        {
            if (sound_played == false)
                alarm[1] = 2
        }
    }
    else
    {
        sound_played = false
        hidden = true
    }
}
if (hidden == true)
    image_speed = 4
if (hidden == false)
{
    image_speed = 0
    if (next_room == false)
    {
        if place_meeting(x, y, obj_player_parent)
        {
            cheese_counter++
            if (cheese_counter >= 2)
            {
                if (global.branecrash == 0)
                {
                    if (void_reset == false)
                    {
                        instance_create_layer(x, y, "Effects2", obj_darkness)
                        with (obj_boulder)
                        {
                            if (b_form != 4)
                            {
                                o_state = (0 << 0)
                                counter = 0
                            }
                        }
                        if (global.cc_state != 0)
                        {
                            with (obj_cc_check)
                                shadow_tally_state = 1
                            alarm[3] = 64
                        }
                        alarm[0] = 72
                        if instance_exists(obj_enemy_parent)
                            obj_enemy_parent.e_state = (0 << 0)
                        obj_game.rm = 1
                        audio_play_sound(snd_stairs, 1, false)
                        with (obj_player)
                            state = (25 << 0)
                        if (room == rm_graysmemories_006)
                        {
                            with (obj_graysmemories)
                                instance_destroy()
                        }
                        event_perform(ev_other, ev_user1)
                        with (obj_inventory)
                        {
                            if (ds_grid_get(ds_player_info, 5, 1) > ds_grid_get(ds_player_info, 5, 0))
                            {
                                glut_count += 1
                                show_debug_message("Greed build up: " + string(glut_count))
                            }
                        }
                        ds_grid_set(obj_inventory.ds_player_info, 5, 1, 0)
                        next_room = true
                    }
                    else if (void_reset == true)
                    {
                        var cif_flicker = instance_place(x, (y - 16), obj_boulder)
                        global.timer_count = false
                        with (cif_flicker)
                        {
                            if (b_form == 4)
                            {
                                scr_audio_group_set_gain_vs(2, ds_grid_get(obj_menu.ds_menu_audio, 3, 2), 0)
                                flicker = true
                                scr_stop_music(false, 0)
                                global.music_is_playing = false
                                global.ambience_shutdown = true
                                global.exit_target = 0
                                global.voidsong = false
                                with (obj_voidsong)
                                    instance_destroy()
                            }
                        }

                        with (obj_cc_check)
                        {
                            if (check_state == 1)
                                check_state = 2
                        }
                        with (obj_inventory)
                        {
                            if (ds_grid_get(ds_player_info, 5, 1) > ds_grid_get(ds_player_info, 5, 0))
                            {
                                glut_count += 1
                                show_debug_message("Greed build up: " + string(glut_count))
                            }
                        }
                        ds_grid_set(obj_inventory.ds_player_info, 5, 1, 0)
                        global.pause = true
                        with (obj_player)
                            state = (25 << 0)
                        if instance_exists(obj_enemy_parent)
                            obj_enemy_parent.e_state = (0 << 0)
                        with (obj_inventory)
                            void_ending = false
                        alarm[2] = 60
                        next_room = true
                    }
                }
                else if (branecrash_check == false)
                {
                    scr_errorcrash()
                    scr_errormessage(15)
                    branecrash_check = true
                }
            }
        }
    }
}
else
    cheese_counter = 0
if place_meeting(x, (y - 16), obj_boulder)
{
    var cif_check = instance_place(x, (y - 16), obj_boulder)
    with (cif_check)
    {
        if (b_form == 4)
        {
            with (obj_exit)
                void_reset = true
        }
        else
            void_reset = false
    }
}
else if room == rm_ev_level && global.level.level_string == global.room_exxx_birch {
    void_reset = true
}
else
    void_reset = false
