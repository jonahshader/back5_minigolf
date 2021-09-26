
menu_x = room_width/2;
menu_y = y;
button_h = 24;
button_w = 256;
button_padding = 8;

//buttons
button[0] = "Continue";
button[1] = "Level Select";
button[2] = "Settings";
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
