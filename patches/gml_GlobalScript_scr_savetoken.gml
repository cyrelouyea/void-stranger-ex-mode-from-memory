// TARGET: LINENUMBER
// 5

// We do not want to save the memory crystal. Just display the thing, and leave.
var itoken = instance_create_depth(ix, (iy + 1), -150, obj_memories_token)
with (obj_floor_blank_b)
{
	token_flicker = 1
	flicker_count = 0
	counter = 0
	flicker = 0
}
return;