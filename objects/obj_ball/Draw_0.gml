/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 22989BCB
draw_self();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6A238E56
/// @DnDArgument : "expr" "mouse_dragging"
if(mouse_dragging)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 52EAC04A
	/// @DnDParent : 6A238E56
	/// @DnDArgument : "code" "var hit_magnitude_percent = hit_magnitude / MAX_HIT_SPEED;$(13_10)var hit_line_color = make_color_rgb(hit_magnitude_percent * 255, 255 - hit_magnitude_percent * 255, 0);$(13_10)draw_set_color(hit_line_color);$(13_10)$(13_10)var mouse_x_to_ball = x - mouse_x;$(13_10)var mouse_y_to_ball = y - mouse_y;$(13_10)var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);$(13_10)mouse_x_to_ball /= magnitude;$(13_10)mouse_y_to_ball /= magnitude;$(13_10)mouse_x_to_ball *= hit_magnitude_percent;$(13_10)mouse_y_to_ball *= hit_magnitude_percent;$(13_10)$(13_10)draw_line_width(x, y, x - mouse_x_to_ball * HIT_LINE_MAX_LENGTH, y - mouse_y_to_ball * HIT_LINE_MAX_LENGTH, 1);"
	var hit_magnitude_percent = hit_magnitude / MAX_HIT_SPEED;
	var hit_line_color = make_color_rgb(hit_magnitude_percent * 255, 255 - hit_magnitude_percent * 255, 0);
	draw_set_color(hit_line_color);
	
	var mouse_x_to_ball = x - mouse_x;
	var mouse_y_to_ball = y - mouse_y;
	var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);
	mouse_x_to_ball /= magnitude;
	mouse_y_to_ball /= magnitude;
	mouse_x_to_ball *= hit_magnitude_percent;
	mouse_y_to_ball *= hit_magnitude_percent;
	
	draw_line_width(x, y, x - mouse_x_to_ball * HIT_LINE_MAX_LENGTH, y - mouse_y_to_ball * HIT_LINE_MAX_LENGTH, 1);
}