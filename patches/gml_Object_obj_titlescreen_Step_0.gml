// TARGET: REPLACE
if (show_prompt == true)
{
    prompt_counter++
    if (prompt_counter >= prompt_limit)
    {
        if (prompt_a != 1)
            prompt_a += 0.05
        if (global.control_type == 0)
        {
            if (ctrl_a != 0)
            {
                if (ctrl_a != 0)
                    ctrl_a -= 0.05
            }
            else if (btn_a != 1)
                btn_a += 0.05
        }
        else if (btn_a != 0)
            btn_a -= 0.05
        else if (ctrl_a != 1)
            ctrl_a += 0.05
    }
    if (btn_a == 1 || ctrl_a == 1)
    {
        if scr_input_check(2)
            yi[0] = -2
        if scr_input_check(0)
            xi[1] = -2
        if scr_input_check(3)
            yi[2] = 3
        if scr_input_check(1)
            xi[3] = 3
        if scr_input_check(5)
            yi[5] = 3
        if scr_input_check(4)
        {
            inputbar_x1 -= 1
            inputbar_x2 += 1
            inputbar_state = true
            yi[4] = 3
        }
        else
        {
            inputbar_x1 = 112
            inputbar_x2 = 112
            inputbar_state = false
        }
    }
    if (inputbar_x1 <= 0)
    {
        control = false
        first_input = true
        show_prompt = false
        alarm[1] = 90
        alarm[0] = 90
    }
}
else
{
    if (prompt_a != 0)
        prompt_a -= 0.05
    if (btn_a != 0)
        btn_a -= 0.05
    if (ctrl_a != 0)
        ctrl_a -= 0.05
}
for (var in = 0; in < 6; in += 1)
{
    if (xi[in] != 0)
        xi[in] -= (sign(xi[in]) * 0.5)
    if (yi[in] != 0)
        yi[in] -= (sign(yi[in]) * 0.5)
}
input_left = scr_input_check(0)
input_right = scr_input_check(1)
input_p = scr_input_check_pressed(4)
if input_p
{
    bloom_counter++
    bloom_cooldown = 0
}
if (bloom_counter != 0)
{
    bloom_cooldown++
    if (bloom_cooldown >= bloom_coollimit)
    {
        bloom_cooldown = 0
        bloom_counter = 0
    }
}
if instance_exists(obj_dustemit)
{
    switch bloom_phase
    {
        case 0:
            if (bloom_counter >= bloom_limit)
            {
                bloom_phase = 1
                bloom_counter = bloom_limit - 1
            }
            break
        case 1:
            ds_list_clear(ds_flower_list)
            for (var i = 0; i < instance_number(obj_dustparticle); i++)
            {
                var idustparticle = instance_find(obj_dustparticle, i)
                with (idustparticle)
                {
                    if (draw_flower == false)
                    {
                        if (image_speed > 2 && image_speed < 7)
                        {
                            with (obj_titlescreen)
                            {
                                var ids_size = ds_list_size(ds_flower_list)
                                ds_list_set(ds_flower_list, ids_size, idustparticle)
                            }
                        }
                    }
                }
            }
            ds_list_shuffle(ds_flower_list)
            if (!ds_list_empty(ds_flower_list))
            {
                var iflower_bloom = ds_list_find_value(ds_flower_list, 0)
                with (iflower_bloom)
                    draw_flower = true
                ds_list_clear(ds_flower_list)
            }
            bloom_phase = 0
            break
    }

}
if input_right
{
    with (obj_dustparticle)
    {
        control_counter++
        if (control_dust == true)
        {
            control_h_movement = 1
            t_hspeed += 0.1
            t_hspeed = clamp(t_hspeed, -3, 3)
        }
    }
}
if input_left
{
    with (obj_dustparticle)
    {
        control_counter++
        if (control_dust == true)
        {
            control_h_movement = 1
            t_hspeed -= 0.1
            t_hspeed = clamp(t_hspeed, -3, 3)
        }
    }
}
if ((!input_left) && (!input_right))
{
    with (obj_dustparticle)
        control_h_movement = 0
}
if (control == true)
{
    input_up_p = scr_input_check_pressed(2)
    input_down_p = scr_input_check_pressed(3)
    input_left_p = scr_input_check_pressed(0)
    input_right_p = scr_input_check_pressed(1)
    input_enter_p = scr_input_check_pressed(4)
    if (language_select == false)
    {
        if input_up_p
        {
            if (answer != 1)
            {
                audio_play_sound(snd_menu_1, 1, false)
                answer = 1
            }
        }
        if input_down_p
        {
            if (answer != 2)
            {
                audio_play_sound(snd_menu_1, 1, false)
                answer = 2
            }
        }
        if (input_enter_p && answer != 0)
        {
            if (!audio_is_playing(snd_menu_3))
                audio_play_sound(snd_menu_3, 1, false)
            confirm = true
        }
    }
    else if (first_input == true)
    {
        if input_up_p
        {
            audio_play_sound(snd_menu_1, 1, false)
            if (current_language > 1)
                current_language -= 1
            else if (current_language == 0)
                current_language = 1
            event_perform(ev_other, ev_user0)
        }
        else if input_down_p
        {
            audio_play_sound(snd_menu_1, 1, false)
            if (current_language < language_count)
                current_language += 1
            event_perform(ev_other, ev_user0)
        }
        else if (input_enter_p && current_language != 0)
        {
            if (!audio_is_playing(snd_menu_3))
            {
                audio_play_sound(snd_menu_3, 1, false)
                language_select = false
                control = false
                display_text = false
                text_alpha = 0
                alarm[1] = 60
                alarm[0] = 120
            }
        }
    }
    if (current_language == 0 && display_text == false && first_input == false)
    {
        if input_enter_p
        {
            var ititle_state = ds_grid_get(obj_inventory.ds_player_info, 20, 3)
            if (ititle_state != 0)
            {
                display_text = true
                first_input = true
                show_prompt = false
            }
        }
    }
}
if (answer == 0)
{
    cy = 8421504
    cn = 8421504
}
else if (answer == 1)
{
    cy = 16777215
    cn = 8421504
}
else if (answer == 2)
{
    cy = 8421504
    cn = 16777215
}
if (answer == 1 && confirm == true)
{
    display_text = false
    text_alpha = 0
    control = false
    answer = 0
    confirm = false
    if (global.giveup == false)
    {
        if (question == 0)
        {
            obj_menu.image_speed = 0
            obj_menu.menu_art_x = 160
            obj_menu.page = 1
            obj_menu.transition = true
            obj_menu.alarm[1] = 16
            global.menu = (!global.menu)
        }
        else if (question == 1)
        {
            question = 2
            with (obj_menu)
                event_perform(ev_other, ev_user2)
            goodluck_string = "Welcome to EX Mode from Memory!"
            scr_stop_music(true, 4)
            alarm[1] = 60
            alarm[2] = 360
            alarm[5] = 240
            scr_savesettings()
        }
    }
    else if (question == 0)
    {
        alarm[1] = 60
        alarm[3] = 180
        ds_grid_set(obj_inventory.ds_player_info, 1, 2, ((ds_grid_get(obj_inventory.ds_player_info, 1, 2)) + 1))
        ds_grid_set(obj_inventory.ds_player_info, 1, 0, ((ds_grid_get(obj_inventory.ds_player_info, 1, 0)) - 3))
        question = 1
    }
}
else if (answer == 2 && confirm == true)
{
    display_text = false
    text_alpha = 0
    control = false
    answer = 0
    confirm = false
    if (global.giveup == false)
    {
        if (question == 0)
        {
            alarm[1] = 60
            alarm[0] = 120
            question = 1
        }
        else if (question == 1)
        {
            alarm[1] = 60
            alarm[0] = 120
            question = 0
        }
    }
    else if (question == 0)
    {
        alarm[1] = 60
        alarm[2] = 120
        question = 2
        global.giveup = false
        with (obj_inventory)
            ds_grid_set(ds_player_info, 12, 1, false)
    }
}
