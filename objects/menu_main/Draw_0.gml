

draw_set_font(font_default_18);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Get longest button and adjust width
m = 0;
for (i = 0; i < array_length(btns); i++) {
	if (string_width(btns[i]) > m) m = string_width(btns[i]);
}
width = m + (left_right_margin*2);
height = 100;

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1)

for (i = 0; i < array_length(btns); i++) {
	if (i == selected_option) {
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_black);
	}
	draw_text(x + left_right_margin, y + top_bottom_margin + (i*(text_line_space+text_height)), btns[i]);
}