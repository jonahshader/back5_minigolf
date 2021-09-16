/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 790FDC4B
/// @DnDInput : 2
/// @DnDArgument : "macro" "BALL_ATTRACT_RADIUS"
/// @DnDArgument : "value" "5"
/// @DnDArgument : "macro_1" "BALL_ATTRACT_SPEED"
/// @DnDArgument : "value_1" ".15"
#macro BALL_ATTRACT_RADIUS 5
#macro BALL_ATTRACT_SPEED .15

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7974F374
/// @DnDInput : 2
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "var" "current_strokes"
/// @DnDArgument : "var_1" "game_finished"
current_strokes = 0;
game_finished = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2803B755
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "game_running"
global.game_running = true;