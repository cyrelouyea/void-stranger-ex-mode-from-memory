bad_count = 0
good_count = 0

bad_count += instance_number(asset_get_index("obj_glassfloor"))
bad_count += instance_number(asset_get_index("obj_deathfloor"))


good_count += instance_number(asset_get_index("obj_floor"))


if (bad_count == 0 and good_count > 0) {
	with (asset_get_index("obj_boulder"))
        if (b_form == 8)
            event_perform(ev_other, ev_user1)
	instance_destroy()	
}

if (keyboard_check_pressed(vk_numpad0)) {
	show_message(bad_count)	
	show_message(good_count)	
}