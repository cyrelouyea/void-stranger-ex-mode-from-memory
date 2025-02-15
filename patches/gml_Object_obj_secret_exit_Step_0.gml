// TARGET: REPLACE
var xi = 0
var yi = 0
for (var i = 0; i < 112; i += 1)
{
    var xpos = 8 + 16 * xi
    var ypos = 8 + 16 * yi
    if place_meeting(xpos, ypos, obj_pit)
    {
        current_array[i] = 0
        xi += 1
    }
    else
    {
        current_array[i] = 1
        xi += 1
    }
    if (xi == 14)
    {
        xi = 0
        yi += 1
    }
}
if (array_equals(current_array, answer_array_001) || array_equals(current_array, answer_array_002) || array_equals(current_array, answer_array_003) || array_equals(current_array, answer_array_004) || array_equals(current_array, answer_array_005) || array_equals(current_array, answer_array_006) || array_equals(current_array, answer_array_007) || array_equals(current_array, answer_array_008) || array_equals(current_array, answer_array_009) || array_equals(current_array, answer_array_010) || array_equals(current_array, answer_array_011) || array_equals(current_array, answer_array_013) || array_equals(current_array, answer_array_014) || array_equals(current_array, answer_array_017) || array_equals(current_array, answer_array_018) || array_equals(current_array, answer_array_999) ||   end_secret == 1)
    correct_answer = true
else if (end_secret == 2)
{
    if instance_exists(obj_glassfloor)
        correct_answer = false
    else
        correct_answer = true
}
else
    correct_answer = false
if ((!instance_exists(obj_exit)) && correct_answer == true)
    secret_warp = true
else if (end_secret == 2 && correct_answer == true)
    secret_warp = true
else
    secret_warp = false
if array_equals(current_array, answer_array_001)
    lborder_speed = 0
else if array_equals(current_array, answer_array_002)
    lborder_speed = 1
else if array_equals(current_array, answer_array_003)
    lborder_speed = 2
else if array_equals(current_array, answer_array_004)
    lborder_speed = 3
else if array_equals(current_array, answer_array_005)
    lborder_speed = 4
else if array_equals(current_array, answer_array_006)
    lborder_speed = 5
else if array_equals(current_array, answer_array_007)
    lborder_speed = 6
else if array_equals(current_array, answer_array_008)
    lborder_speed = 7
else if array_equals(current_array, answer_array_009)
    lborder_speed = 8
else if array_equals(current_array, answer_array_010)
    lborder_speed = 8
else if array_equals(current_array, answer_array_011)
    lborder_speed = 8
else if array_equals(current_array, answer_array_012) || array_equals(current_array, answer_array_016)  || array_equals(current_array, answer_array_015)
{
    lborder_speed = 8
    with (obj_boulder)
    {
        if (b_form == 8)
            event_perform(ev_other, ev_user1)
        if (special_message == 94)
        {
            special_message = 95
            alarm[0] = 2
        }
    }
}
else if array_equals(current_array, answer_array_013)
    lborder_speed = 7
else if array_equals(current_array, answer_array_014)
    lborder_speed = 6
else if array_equals(current_array, answer_array_017)
    lborder_speed = 8
else if array_equals(current_array, answer_array_018)
    lborder_speed = 8
else if array_equals(current_array, answer_array_999)
    lborder_speed = 8
else if (end_secret == 1 || end_secret == 2)
    lborder_speed = 8
if (secret_warp == true)
{
    if (lborder_a != 1)
        lborder_a += 0.025
}
else
    lborder_a = 0
