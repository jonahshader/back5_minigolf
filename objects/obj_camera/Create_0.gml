/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 215876F9
/// @DnDArgument : "code" "enum camera_mode {$(13_10)	follow_path,$(13_10)	follow_object,$(13_10)	follow_drag,$(13_10)	move_to_target,$(13_10)	move_to_follow_target,$(13_10)}$(13_10)current_mode = camera_mode.follow_object;$(13_10)follow_target = obj_ball;$(13_10)view_w = camera_get_view_width(view_camera[0]);$(13_10)view_h = camera_get_view_height(view_camera[0]);$(13_10)mouse_prevx = -1;$(13_10)mouse_prevy = -1;"
enum camera_mode {
	follow_path,
	follow_object,
	follow_drag,
	move_to_target,
	move_to_follow_target,
}
current_mode = camera_mode.follow_object;
follow_target = obj_ball;
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
mouse_prevx = -1;
mouse_prevy = -1;