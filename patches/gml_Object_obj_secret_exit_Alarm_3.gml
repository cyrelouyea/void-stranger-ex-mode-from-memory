// TARGET: REPLACE
if instance_exists(obj_player)
    global.pause = true

if array_equals(current_array, answer_array_017) {
    scr_stop_music(1, 4)
    instance_create_layer(x, y, "Effects", obj_ev_ex_cutscene_end)
    return;
}
event_perform(ev_other, ev_user1)
alarm[4] = 60
alarm[5] = 132
