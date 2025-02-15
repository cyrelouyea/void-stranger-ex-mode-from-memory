// TARGET: REPLACE
if (white_alpha == 1 && counter >= 160)
{
    draw_set_font(global.text_font)
    draw_set_halign(fa_center)
    var text = scrScript(1227)
    if (room == rm_ev_level && global.level.level_string == global.room_exxx_birch)
    {
        if (counter >= 160 && counter < 320)
            text = "Thank you for playing!"
        else if (counter <= 380)
            text = "Thank you for playing?"
        else if (counter <= 420)
            text = "Th?nk you for playing?"
        else if (counter <= 440)
            text = "Th?nk yo? for playing?"
        else if (counter <= 450)
            text = "Th?nk yo? ?or playing?"
        else if (counter <= 455)
            text = "Th?nk yo? ?or p?aying?"
        else if (counter <= 460)
            text = "Th?nk yo? ?or p??ying?"
        else if (counter <= 465)
            text = "?h?nk yo? ?or p??ying?"
        else if (counter <= 470)
            text = "?h?nk ?o? ?or p??ying?"
        else if (counter <= 475)
            text = "?h?nk ?o? ?or p??y?ng?"
        else if (counter <= 480)
            text = "?h?nk ?o? ??r p??y?ng?"
        else if (counter <= 485)
            text = "?h?nk ?o? ??r p??y??g?"
        else if (counter <= 490)
            text = "?h?n? ?o? ??r p??y??g?"
        else if (counter <= 495)
            text = "?h??? ?o? ??r p??y??g?"
        else if (counter <= 500)
            text = "?h??? ??? ??r p??y??g?"
        else if (counter <= 505)
            text = "?h??? ??? ??r p?????g?"
        else if (counter <= 510)
            text = "?h??? ??? ??? p?????g?"
        else if (counter <= 515)
            text = "????? ??? ??? p?????g?"
        else
            text = "????? ??? ??? ????????"
    }
    if (msg_color == c_black)
    {
        draw_text_color((room_width * 0.5 + ltg_x), (room_height * 0.5 - 16 + ltg_y), text, c_silver, c_silver, c_silver, c_silver, 1)
        draw_text_color((room_width * 0.5 + g_x), (room_height * 0.5 - 16 + g_y), text, c_gray, c_gray, c_gray, c_gray, 1)
    }
    draw_text_color((room_width * 0.5 + b_x), (room_height * 0.5 - 16 + b_y), text, msg_color, msg_color, msg_color, msg_color, 1)
    draw_set_halign(fa_left)
}
