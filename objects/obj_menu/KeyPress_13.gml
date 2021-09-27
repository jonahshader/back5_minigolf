

switch(menu_index) {
	
	case 0:
	room_goto(rm_jonah_hole_1);
		show_debug_message("Tutorial");
		break;
	case 1:
		room_goto(rm_max_hole_1);
		break;
	case 2:
		room_goto(rm_max_hole_6);
		break;
	case 3:
		game_end();
		break;
}

