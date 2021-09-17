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
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "game_finished"
game_finished = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2803B755
/// @DnDInput : 2
/// @DnDArgument : "value" "true"
/// @DnDArgument : "var" "game_running"
/// @DnDArgument : "var_1" "current_strokes"
global.game_running = true;
global.current_strokes = 0;