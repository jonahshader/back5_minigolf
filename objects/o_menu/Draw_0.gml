
var i = 0;
repeat(buttons){
	
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i+ 256* (1-unfold[i]);
	
	draw_set_color(c_grey);
	draw_rectangle(xx - button_w/2, yy, xx - button_w/2 + button_w, yy + button_h, false);
	
	draw_set_color(c_white);
	
	if (menu_index == i ) draw_set_color(c_green);
	
	draw_text(xx, yy + button_h/2, button[i]);
	i++;
}