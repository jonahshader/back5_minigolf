/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 747692B6
/// @DnDArgument : "code" "cam_x = camera_get_view_x(view_camera[0]);$(13_10)cam_y = camera_get_view_y(view_camera[0]);$(13_10)switch(current_mode){$(13_10)	case camera_mode.follow_path:$(13_10)	$(13_10)	break;$(13_10)	case camera_mode.follow_drag:$(13_10)	break;$(13_10)	case camera_mode.follow_object:$(13_10)	cam_x = follow_target.x - (view_w/2);$(13_10)	cam_y = follow_target.y - (view_h/2);$(13_10)	break;$(13_10)	case camera_mode.move_to_follow_target:$(13_10)	cam_x = lerp(cam_x, follow_target.x - (view_w/2), 0.1);$(13_10)	cam_y = lerp(cam_y, follow_target.y - (view_h/2), 0.1);$(13_10)	if(point_distance(cam_x, cam_y, follow_target.x - (view_w/2), follow_target.y - (view_h/2)) < 1){$(13_10)	current_mode = camera_mode.follow_object;$(13_10)	}$(13_10)	break;$(13_10)	case camera_mode.move_to_target:$(13_10)	$(13_10)	break;$(13_10)	$(13_10)	default:$(13_10)	break;$(13_10)}$(13_10)camera_set_view_pos(view_camera[0],cam_x,cam_y)"
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
switch(current_mode){
	case camera_mode.follow_path:
	
	break;
	case camera_mode.follow_drag:
	break;
	case camera_mode.follow_object:
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
	
	break;
	
	default:
	break;
}
camera_set_view_pos(view_camera[0],cam_x,cam_y)