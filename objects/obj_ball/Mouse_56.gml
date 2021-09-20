/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0237B5B7
/// @DnDArgument : "expr" "mouse_dragging"
if(mouse_dragging)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EBC0E6F
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "mouse_dragging"
	mouse_dragging = false;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 749C4C9F
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "code" "var mouse_x_to_ball = x - mouse_x;$(13_10)var mouse_y_to_ball = y - mouse_y;$(13_10)var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);$(13_10)$(13_10)mouse_x_to_ball /= magnitude; // normalize$(13_10)mouse_y_to_ball /= magnitude;$(13_10)$(13_10)magnitude *= MOUSE_DIST_TO_SPEED;$(13_10)if (magnitude > MAX_HIT_SPEED) {$(13_10)	magnitude = MAX_HIT_SPEED;$(13_10)}$(13_10)$(13_10)mouse_x_to_ball *= magnitude;$(13_10)mouse_y_to_ball *= magnitude;$(13_10)$(13_10)hspeed += mouse_x_to_ball;$(13_10)vspeed += mouse_y_to_ball;"
	var mouse_x_to_ball = x - mouse_x;
	var mouse_y_to_ball = y - mouse_y;
	var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);
	
	mouse_x_to_ball /= magnitude; // normalize
	mouse_y_to_ball /= magnitude;
	
	magnitude *= MOUSE_DIST_TO_SPEED;
	if (magnitude > MAX_HIT_SPEED) {
		magnitude = MAX_HIT_SPEED;
	}
	
	mouse_x_to_ball *= magnitude;
	mouse_y_to_ball *= magnitude;
	
	hspeed += mouse_x_to_ball;
	vspeed += mouse_y_to_ball;
}