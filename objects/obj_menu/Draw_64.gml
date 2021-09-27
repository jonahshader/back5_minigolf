//var ax = 350;	//x loc on the GUI to anchor the menu from top left
//var ay = 300;	//y loc on the GUI to anchor the menu from top left
//var txt;
//var col;
//var i;
//draw_set_font(fnt_body);   //add your own custom font
//draw_set_valign(fa_middle);
//draw_set_halign(fa_left);
//draw_set_alpha(1);
//
//var xx = ax;
//var yy = ay;
//
////find the widest menu item so we know where to create boundaries
//var wide = 0;
//for (var i = 0; i < buttons; i++) {
//	var w = string_width(button[i]);  //find the widest string
//	if w > wide wide = w;
//}
//var ls = (xx - 30);
//var rs = (xx + wide);
//		
///// DRAW MENU
//for (var i = 0; i < buttons; i++) {
//			
//	//highlight on mouse over
//	if point_in_rectangle(mx,my,ls,yy/3,rs,yy/3) && mousec {
//		if cursor != i audio_play_sound(snd_menu_switch,1,false);
//		cursor = i;
//	}
//
//
//}
//
////highlight with mousec/ keyboard
//if pup {
//	cursor -= 1;
//	if cursor < 0 cursor = buttons-1;
//}
//if pdown {
//	cursor += 1;
//	if cursor > buttons-1 cursor = 0;
//}
//		
////activate
//if action {
//	switch cursor {
//		case 0:
//			//menu actions go here
//		break;
//		case 1:
//			//menu actions go here
//		break;
//		case 2:
//			//menu actions go here
//		break;
//		case 3:
//		game_end();
//		break;
//	}
//}
//
////sound effects - Add your own custom Sound Effects Here
//if action audio_play_sound(snd_menu_switch,1,false);
//if pup || pdown audio_play_sound(snd_menu_switch,1,false);