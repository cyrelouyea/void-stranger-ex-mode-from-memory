counter++
if (counter == delay + 120)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 0
}
if (counter ==  delay + 128)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 1
}
if (counter ==  delay + 225)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 2
}
if (counter == delay + 270)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 3
}
if (counter ==  delay + 285)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 4
}
if (counter == delay +  293)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 5
}
if (counter == delay +  310)
{
    with (asset_get_index("obj_voidshatter"))
        image_speed = 6
}
if (counter ==  delay + 326)
{
    with (asset_get_index("obj_voidshatter"))
        alarm[1] = 4
    audio_play_sound(asset_get_index("snd_helmetbreak"), 1, false)
}
if (counter ==  delay + 460) 
{
	asset_get_index("scr_play_music")(asset_get_index("msc_love"), false);
	global.start_song_time = current_time
}

if (counter == delay +  400)
    white_alpha += 0.2
if (counter == delay +  430)
    white_alpha += 0.2
if (counter == delay +  460)
    white_alpha += 0.2
if (counter ==  delay + 490)
    white_alpha += 0.2
if (counter ==  delay + 520)
{
    white_alpha += 0.2
    global.inventory = false
}


if (counter ==  delay + 580) 
//	black_alpha += 0.25
//if (counter ==  delay + 780) 
//	black_alpha += 0.25
//if (counter ==  delay + 790) 
//	black_alpha += 0.25
//if (counter ==  delay + 800) 
//	black_alpha += 0.25
//if (counter ==  delay + 810)
	room_goto(asset_get_index("rm_ev_ex_credits"))

asset_get_index("obj_exitbar").exit_bar = false