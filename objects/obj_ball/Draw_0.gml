/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 068AB9B6
/// @DnDArgument : "expr" "mouse_dragging"
if(mouse_dragging)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 18D8DF93
	/// @DnDParent : 068AB9B6
	/// @DnDArgument : "color" "$FF00FAFF"
	draw_set_colour($FF00FAFF & $ffffff);
	var l18D8DF93_0=($FF00FAFF >> 24);
	draw_set_alpha(l18D8DF93_0 / $ff);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 00C14DFB
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 60B53C82
	/// @DnDParent : 00C14DFB
	/// @DnDArgument : "expr" "ready_to_hit"
	if(ready_to_hit)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0ADB9E4C
		/// @DnDParent : 60B53C82
		/// @DnDArgument : "color" "$FF00FF0C"
		draw_set_colour($FF00FF0C & $ffffff);
		var l0ADB9E4C_0=($FF00FF0C >> 24);
		draw_set_alpha(l0ADB9E4C_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 34F8A92F
	/// @DnDParent : 00C14DFB
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 36069DC3
		/// @DnDParent : 34F8A92F
		draw_set_colour($FFFFFFFF & $ffffff);
		var l36069DC3_0=($FFFFFFFF >> 24);
		draw_set_alpha(l36069DC3_0 / $ff);
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Ellipse
/// @DnDVersion : 1
/// @DnDHash : 282BD6EA
/// @DnDArgument : "x1" "- BALL_RADIUS"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-BALL_RADIUS"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "BALL_RADIUS"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "BALL_RADIUS"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_ellipse(x + - BALL_RADIUS, y + -BALL_RADIUS, x + BALL_RADIUS, y + BALL_RADIUS, 0);

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