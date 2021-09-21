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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2803B755
/// @DnDArgument : "var" "current_strokes"
global.current_strokes = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 774DB9B3
/// @DnDArgument : "code" "enum GameState {$(13_10)	GAME_RUNNING, // game not done yet$(13_10)	HOLE_IN_ONE, // 1 stroke$(13_10)	BETTER_THAN_ALBATROSS, // not a hole in one but better than albatross. should be rare$(13_10)	ALBATROSS, // 3 under$(13_10)	EAGLE, // 2 under$(13_10)	BIRDIE, // 1 under$(13_10)	PAR, // 0 under$(13_10)	BOGEY, // 1 over$(13_10)	DOUBLE_BOGEY, // 2 over$(13_10)	OVER_MAX, // 3+ over$(13_10)}$(13_10)$(13_10)global.game_state = GameState.GAME_RUNNING;$(13_10)$(13_10)if (first_hole_of_course) {$(13_10)	global.level_number = 1;$(13_10)}"
enum GameState {
	GAME_RUNNING, // game not done yet
	HOLE_IN_ONE, // 1 stroke
	BETTER_THAN_ALBATROSS, // not a hole in one but better than albatross. should be rare
	ALBATROSS, // 3 under
	EAGLE, // 2 under
	BIRDIE, // 1 under
	PAR, // 0 under
	BOGEY, // 1 over
	DOUBLE_BOGEY, // 2 over
	OVER_MAX, // 3+ over
}

global.game_state = GameState.GAME_RUNNING;

if (first_hole_of_course) {
	global.level_number = 1;
}