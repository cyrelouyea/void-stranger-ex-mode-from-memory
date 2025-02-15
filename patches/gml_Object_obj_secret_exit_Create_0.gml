// TARGET: REPLACE
if (global.voider == false)
{
}
sprite_index = spr_pit
image_speed = 0
map_index = 2141
correct_answer = false
secret_warp = false
counter = 0
lborder_x1 = 20
lborder_y1 = 64
lborder_x2 = 204
lborder_y2 = 64
lborder_a = 0
lborder_speed = 0
end_secret = 0
str_answer_001 = "1111111111111111111000011111111100011011111111011111111111111111101111111101100011111111100001111111111111111111"
str_answer_002 = "1111111111111111111100111111111100110011111111110001111111111110111111111111011111111111110011111111111111111111"
str_answer_003 = "1111111111111111110000011111111100110011111111111001111111111001111111111111001111111111111001111111111111111111"
str_answer_004 = "1111111111111111111000111111111101110111111111110011111111110111011111111110001111111111111000111111111111111111"
str_answer_005 = "1111111111111111111011011111111100110011111111101101111111111100111111111110110111111111110011111111111111111111"
str_answer_006 = "1111111111111111110011001111111100110011111111100100111111111100011111111111110011111111111100111111111111111111"
str_answer_007 = "1111111111111111111000111111111100111111111111100100111111110011001111111100000111111111110011111111111111111111"
str_answer_008 = "1111111111111111111100011111111101010111111111010010111111111010001111111110010011111111110001111111111111111111"
str_answer_009 = "1111111111111111110000001111111100000011111111000000111111110000001111111100000011111111000000111111111111111111"
str_answer_010 = "1111111111111111111000011111111100000011111111010010111111111100111111111100000011111111101101111111111111111111"
str_answer_011 = "1111111111111111111100011111111110100111111111100110111111110110011111111110010111111111100011111111111111111111"
str_answer_012 = "0000000000000000111100000000001100000000000011110000000000110000000000001100000000000011000000000000000000000000"
str_answer_013 = "0001111111100000011100011000000101010110000001010010100000011010001000000110010010000001110001100000011111111000"
str_answer_014 = "0001111111100000011000111000000100111110000001100100100000010011001000000100000110000001110011100000011111111000"
str_answer_015 = "0000000000000001111000000000011000000000000111100000000001100000000000011000000000000110000000000000000000000000"
str_answer_016 = "0000000000000101111000000001011000000000010111100000000101100000000000011000000000000110000000000000000000000000"
str_answer_017 = "0001111111100000010001111000000101100010000001000011100000011100001000000100001110000001111000100000011111111000"
str_answer_018 = "0001111111100000011000011000000100000010000001010010100000011100111000000100000010000001101101100000011111111000"

str_answer_999 = ds_grid_get(obj_inventory.ds_player_info, 19, 2)
var str_value = 0
for (var a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_001, (1 + a))
    var str_real = real(str_value)
    answer_array_001[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_002, (1 + a))
    str_real = real(str_value)
    answer_array_002[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_003, (1 + a))
    str_real = real(str_value)
    answer_array_003[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_004, (1 + a))
    str_real = real(str_value)
    answer_array_004[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_005, (1 + a))
    str_real = real(str_value)
    answer_array_005[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_006, (1 + a))
    str_real = real(str_value)
    answer_array_006[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_007, (1 + a))
    str_real = real(str_value)
    answer_array_007[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_008, (1 + a))
    str_real = real(str_value)
    answer_array_008[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_009, (1 + a))
    str_real = real(str_value)
    answer_array_009[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_010, (1 + a))
    str_real = real(str_value)
    answer_array_010[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_011, (1 + a))
    str_real = real(str_value)
    answer_array_011[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_012, (1 + a))
    str_real = real(str_value)
    answer_array_012[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_013, (1 + a))
    str_real = real(str_value)
    answer_array_013[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_014, (1 + a))
    str_real = real(str_value)
    answer_array_014[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_015, (1 + a))
    str_real = real(str_value)
    answer_array_015[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_016, (1 + a))
    str_real = real(str_value)
    answer_array_016[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_017, (1 + a))
    str_real = real(str_value)
    answer_array_017[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_018, (1 + a))
    str_real = real(str_value)
    answer_array_018[a] = str_real
}
str_value = 0
for (a = 0; a < 112; a += 1)
{
    str_value = string_char_at(str_answer_999, (1 + a))
    str_real = real(str_value)
    answer_array_999[a] = str_real
}
