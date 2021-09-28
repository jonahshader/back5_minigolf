/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F652A83
/// @DnDArgument : "code" "if (global.game_state != GameState.GAME_RUNNING) {$(13_10)	global.level_number = global.level_number + 1;$(13_10)	room_goto_next();$(13_10)}$(13_10)$(13_10)"
if (global.game_state != GameState.GAME_RUNNING) {
	global.level_number = global.level_number + 1;
	room_goto_next();
}