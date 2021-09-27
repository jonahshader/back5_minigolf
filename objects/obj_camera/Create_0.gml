/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F61333F
/// @DnDArgument : "objectid" "obj_focus"
/// @DnDArgument : "layer" "layer"
/// @DnDSaveInfo : "objectid" "obj_focus"
instance_create_layer(0, 0, layer, obj_focus);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 215876F9
/// @DnDArgument : "code" "enum camera_mode {$(13_10)	follow_path,$(13_10)	follow_object,$(13_10)	follow_border,$(13_10)	follow_drag,$(13_10)	move_to_target,$(13_10)	move_to_follow_target,$(13_10)}$(13_10)initial = true;$(13_10)current_mode = 0;$(13_10)follow_target = obj_focus;$(13_10)view_w = camera_get_view_width(view_camera[0]);$(13_10)view_h = camera_get_view_height(view_camera[0]);$(13_10)mouse_prevx = -1;$(13_10)mouse_prevy = -1;$(13_10)target_x = 0;$(13_10)target_y = 0;$(13_10)	$(13_10)$(13_10)// Camera logic based on this tutorial: https://youtu.be/Gj6bTqKIsLk"
enum camera_mode {
	follow_path,
	follow_object,
	follow_border,
	follow_drag,
	move_to_target,
	move_to_follow_target,
}
initial = true;
current_mode = 0;
follow_target = obj_focus;
view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);
mouse_prevx = -1;
mouse_prevy = -1;
target_x = 0;
target_y = 0;
	

// Camera logic based on this tutorial: https://youtu.be/Gj6bTqKIsLk