menu_x = room_width/2;
menu_y = y;
button_h = 24;
button_w = 256;
button_padding = 8;


//buttons
button[0] = "Tutorial Course";
button[1] = "Standard Couse";
button[2] = "Advance Course";
button[3] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(buttons) {
	unfold[i] = 0;
	i++;
}

particle_effects = part_system_create();
part_system_depth(particle_effects, -1000);

box_flash = part_type_create();
part_type_shape(box_flash, pt_shape_line);
part_type_size(box_flash, 5, 5, -.02, 0);
part_type_color3(box_flash, make_color_rgb(128, 255, 0), make_color_rgb(0, 128, 255), make_color_rgb(128,255,0));
part_type_alpha3(box_flash, .3, 0.5, 0);
part_type_blend(box_flash, true);
part_type_life(box_flash, 20, 20);

//------------------ Mouse Sup-----------------------//

//color1 = c_gray;
//color2 = c_white;
//vS = 70;

/*cursor = 0;

//detect if mousec is plugged in
mousec = true;
var gp_num = gamepad_get_device_count();
var i;
for (var i = 0; i < gp_num; i++;) {
	if gamepad_is_connected(i) mousec = false;
}
lastmx = device_mouse_x_to_gui(0);
lastmy = device_mouse_y_to_gui(0);
*/



