

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons -1) menu_index = 0;

var i = 0;
repeat(buttons) {
	
	
	
	if(unfold[i] == 1) i++;
	
	if(i <buttons)unfold[i] = min(1, unfold[i] + .02);
	if (i+1 <buttons) unfold[i+1] = min(1, unfold [i+1] + .005);
}


	


if(menu_index != last_selected) {
	part_particles_create (particle_effects, menu_x, menu_y + button_h/2 + (button_h + button_padding) * menu_index, box_flash, 1);
	audio_play_sound(snd_menu_switch,1,false);
}	

last_selected = menu_index;