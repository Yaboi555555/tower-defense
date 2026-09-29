var highlight_color = c_red
draw_self()

if(highlight){
    draw_set_alpha(0.5)
    draw_set_color(highlight_color)
    draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
    draw_set_alpha(1)
    draw_set_color(c_white)
}
