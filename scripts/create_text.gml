///create_text("Message", speed, x, y);
var msg = argument0;
var writeSpd = argument1;
//var xpos = argument2;
//var ypos = argument3;

txt = instance_create(0, 0, obj_textBox);
with (txt)
{
    padding = 16;
    max_length = view_wview[0] - (padding * 2);
    text = msg;
    spd = writeSpd;
    font = fnt_TextBox;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    draw_set_font(font);
    text_width = string_width_ext(text, font_size + (font_size / 2), max_length);
    text_height = string_height_ext(text, font_size + (font_size / 2), max_length);
    box_width = text_width + (padding * 2);
    box_height = text_height + (padding * 2);
    
    x = (view_wview[0] - box_width) / 2;
    y = (view_hview[0] - box_height) - 10;
}
