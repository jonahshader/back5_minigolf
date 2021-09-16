/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 76A3DEF0
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.game_running"
global.game_running = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 146B5D1B
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "game_finished"
game_finished = true;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1EDABB06
/// @DnDArgument : "code" "var nearest_ball = instance_nearest(x, y, obj_ball);$(13_10)instance_destroy(nearest_ball);"
var nearest_ball = instance_nearest(x, y, obj_ball);
instance_destroy(nearest_ball);