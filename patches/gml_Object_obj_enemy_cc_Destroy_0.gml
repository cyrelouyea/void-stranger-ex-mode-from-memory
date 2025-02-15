// TARGET: REPLACE
if (room == rm_test2_054 || global.level.level_string == global.room_e002)
{
    var istring = "3"
    with (obj_riddle_008)
    {
        var islength = string_length(code_string) + 1
        code_string = string_insert(istring, code_string, islength)
    }
}
if (room == rm_test2_059 || global.level.level_string == global.room_e010_final)
{
    with (obj_boulder)
    {
        if (b_form == 8)
            event_perform(ev_other, ev_user1)
    }
}
