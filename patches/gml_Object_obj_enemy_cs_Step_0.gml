// TARGET: LINENUMBER
// 93
if (variable_instance_exists(id, "ev_scaredeer")) {
    if place_meeting((x - e_move_x), (y - e_move_y), obj_obstacle_parent) || place_meeting((x - e_move_x), (y - e_move_y), obj_npc_parent) || place_meeting(x - e_move_x, y - e_move_y, obj_enemy_parent)  {
		if place_meeting((x + e_move_x), (y + e_move_y), obj_player)
		{
			with (instance_place((x + e_move_x), (y + e_move_y), obj_player))
				state = (6 << 0)
			e_state = (9 << 0)
		}
		else
			 e_state = 0
	}
    else if place_meeting((x - e_move_x), (y - e_move_y), obj_pit)
    {
        x -= e_move_x
        y -= e_move_y
        e_state = 12
        cycle = 0
    }
    else
    {
        x -= e_move_x
        y -= e_move_y
        e_state = 0
    }
}
else