/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 123D26E1
/// @DnDArgument : "var" "friction_vel"
/// @DnDArgument : "value" "(CONST_FRICTION + PROPORTIONAL_FRICTION * speed) * friction_multiplier"
var friction_vel = (CONST_FRICTION + PROPORTIONAL_FRICTION * speed) * friction_multiplier;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3D453B53
/// @DnDArgument : "expr" "speed > friction_vel"
if(speed > friction_vel)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C713062
	/// @DnDInput : 2
	/// @DnDParent : 3D453B53
	/// @DnDArgument : "expr" "-friction_vel"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "var_1" "ready_to_hit"
	speed += -friction_vel;
	ready_to_hit = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2CC7534B
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64BC2F40
	/// @DnDInput : 2
	/// @DnDParent : 2CC7534B
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "speed"
	/// @DnDArgument : "var_1" "ready_to_hit"
	speed = 0;
	ready_to_hit = true;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 19EAA185
/// @DnDArgument : "expr" "mouse_dragging"
if(mouse_dragging)
{

}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2ED24E85
/// @DnDArgument : "code" "// calculate hit magnitude$(13_10)var mouse_x_to_ball = x - mouse_x;$(13_10)var mouse_y_to_ball = y - mouse_y;$(13_10)var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);$(13_10)$(13_10)$(13_10)magnitude *= MOUSE_DIST_TO_SPEED;$(13_10)if (magnitude > MAX_HIT_SPEED) {$(13_10)	magnitude = MAX_HIT_SPEED;$(13_10)}$(13_10)$(13_10)hit_magnitude = magnitude;$(13_10)move_bounce_solid(true);"
// calculate hit magnitude
var mouse_x_to_ball = x - mouse_x;
var mouse_y_to_ball = y - mouse_y;
var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);


magnitude *= MOUSE_DIST_TO_SPEED;
if (magnitude > MAX_HIT_SPEED) {
	magnitude = MAX_HIT_SPEED;
}

hit_magnitude = magnitude;
move_bounce_solid(true);