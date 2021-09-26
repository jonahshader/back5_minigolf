/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 50F51B96
/// @DnDArgument : "steps" "0"
alarm_set(0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21CE2F3A
/// @DnDInput : 4
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "expr_1" "y"
/// @DnDArgument : "var" "x_start"
/// @DnDArgument : "var_1" "y_start"
/// @DnDArgument : "var_2" "open_progress"
/// @DnDArgument : "var_3" "open_timer"
x_start = x;
y_start = y;
open_progress = 0;
open_timer = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 604BFB57
/// @DnDArgument : "funcName" "open_door"
function open_door() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EB502AD
	/// @DnDParent : 604BFB57
	/// @DnDArgument : "expr" "30"
	/// @DnDArgument : "var" "open_timer"
	open_timer = 30;
}