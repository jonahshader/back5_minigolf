/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 747692B6
/// @DnDArgument : "code" "cam_x = camera_get_view_x(view_camera[0]);$(13_10)cam_y = camera_get_view_y(view_camera[0]);$(13_10)switch(current_mode){$(13_10)	case camera_mode.follow_path:$(13_10)	follow_target = self$(13_10)	if initial == true {$(13_10)	x = obj_ball.x;$(13_10)	y = obj_ball.y;$(13_10)	path_start(follow_path, 4, path_action_stop, false)$(13_10)	initial = false;$(13_10)	}$(13_10)	cam_x = follow_target.x - (view_w/2);$(13_10)	cam_y = follow_target.y - (view_h/2);$(13_10)	break;$(13_10)	case camera_mode.follow_border:$(13_10)	if(!point_in_rectangle(mouse_x, mouse_y,cam_x + (view_w * 0.1), cam_y + (view_h * 0.1), cam_x + (view_w * 0.9), cam_y + (view_h * 0.9))) {$(13_10)		cam_x = lerp(cam_x, mouse_x-(view_w/2), 0.05);$(13_10)		cam_y = lerp(cam_y, mouse_y-(view_h/2), 0.05);$(13_10)	}$(13_10)	$(13_10)	case camera_mode.follow_drag:$(13_10)	var mousex = display_mouse_get_x();$(13_10)	var mousey = display_mouse_get_y();$(13_10)	if(mouse_check_button(mb_left)) {$(13_10)	cam_x += (mouse_prevx-mousex);$(13_10)	cam_y += (mouse_prevy - mousey);$(13_10)	}$(13_10)	$(13_10)	mouse_prevx = mousex;$(13_10)	mouse_prevy = mousey;$(13_10)	break;$(13_10)	$(13_10)	case camera_mode.follow_object:$(13_10)	if(!instance_exists(follow_target)) break;$(13_10)	cam_x = follow_target.x - (view_w/2);$(13_10)	cam_y = follow_target.y - (view_h/2);$(13_10)	break;$(13_10)	$(13_10)	case camera_mode.move_to_follow_target:$(13_10)	cam_x = lerp(cam_x, follow_target.x - (view_w/2), 0.1);$(13_10)	cam_y = lerp(cam_y, follow_target.y - (view_h/2), 0.1);$(13_10)	if(point_distance(cam_x, cam_y, follow_target.x - (view_w/2), follow_target.y - (view_h/2)) < 1){$(13_10)	current_mode = camera_mode.follow_object;$(13_10)	}$(13_10)	break;$(13_10)	$(13_10)	case camera_mode.move_to_target:$(13_10)	if(mouse_check_button(mb_left)) {$(13_10)		target_x = mouse_x;$(13_10)		target_y = mouse_y;$(13_10)	}$(13_10)	cam_x = lerp(cam_x, target_x - (view_w/2), 0.1);$(13_10)	cam_y = lerp(cam_y, target_y - (view_h/2), 0.1);$(13_10)	$(13_10)	break;$(13_10)	$(13_10)	default:$(13_10)	break;$(13_10)}$(13_10)camera_set_view_pos(view_camera[0],cam_x,cam_y)"
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
switch(current_mode){
	case camera_mode.follow_path:
	follow_target = self
	if initial == true {
	x = obj_ball.x;
	y = obj_ball.y;
	path_start(follow_path, 4, path_action_stop, false)
	initial = false;
	}
	cam_x = follow_target.x - (view_w/2);
	cam_y = follow_target.y - (view_h/2);
	break;
	case camera_mode.follow_border:
	if(!point_in_rectangle(mouse_x, mouse_y,cam_x + (view_w * 0.1), cam_y + (view_h * 0.1), cam_x + (view_w * 0.9), cam_y + (view_h * 0.9))) {
		cam_x = lerp(cam_x, mouse_x-(view_w/2), 0.05);
		cam_y = lerp(cam_y, mouse_y-(view_h/2), 0.05);
	}
	
	case camera_mode.follow_drag:
	var mousex = display_mouse_get_x();
	var mousey = display_mouse_get_y();
	if(mouse_check_button(mb_left)) {
	cam_x += (mouse_prevx-mousex);
	cam_y += (mouse_prevy - mousey);
	}
	
	mouse_prevx = mousex;
	mouse_prevy = mousey;
	break;
	
	case camera_mode.follow_object:
	if(!instance_exists(follow_target)) break;
	cam_x = follow_target.x - (view_w/2);
	cam_y = follow_target.y - (view_h/2);
	break;
	
	case camera_mode.move_to_follow_target:
	cam_x = lerp(cam_x, follow_target.x - (view_w/2), 0.1);
	cam_y = lerp(cam_y, follow_target.y - (view_h/2), 0.1);
	if(point_distance(cam_x, cam_y, follow_target.x - (view_w/2), follow_target.y - (view_h/2)) < 1){
	current_mode = camera_mode.follow_object;
	}
	break;
	
	case camera_mode.move_to_target:
	if(mouse_check_button(mb_left)) {
		target_x = mouse_x;
		target_y = mouse_y;
	}
	cam_x = lerp(cam_x, target_x - (view_w/2), 0.1);
	cam_y = lerp(cam_y, target_y - (view_h/2), 0.1);
	
	break;
	
	default:
	break;
}
camera_set_view_pos(view_camera[0],cam_x,cam_y)