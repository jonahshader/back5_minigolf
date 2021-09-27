
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




/*			Mouse Sup



//find the widest menu item so we know where to create boundaries
var wide = 0;
for (var i = 0; i < buttons; i++) {
	var w = string_width(button[i]);  //find the widest string
	if w > wide wide = w;
}
var ls = (xx - 30);
var rs = (xx + wide);

//check if the user is using the mouse
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
if (mx != lastmx || my != lastmy) mousec = true;
lastmx = mx;
lastmy = my;

//if using keyboard then disable the mouse, so there is no confusion
//if keyboard_check_pressed(vk_anykey) mousec = false;

	var txt;
	var col;

/// DRAW MENU
for (var i = 0; i < buttons; i++) {
			
	//highlight on mouse over
	if point_in_rectangle(mx,my,ls,yy-vS/3,rs,yy+vS/3) && mousec {
		if cursor != i audio_play_sound(snd_menu_switch,1,false);
		cursor = i;
	}
	col = color1;
	txt = button[i];
	if cursor == i col = color2;
	//draw_text_transformed_color(xx,yy,button[i],1,1,0,col,col,col,col,1);
	yy += vS;
}


	switch cursor {
		case 0:
			//menu actions go here
		break;
		case 1:
			//menu actions go here
		break;
		case 2:
			//menu actions go here
		break;
		case 3:
		game_end();
		break;
	}
*/
	
