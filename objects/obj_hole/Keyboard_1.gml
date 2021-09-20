/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F652A83
/// @DnDArgument : "code" "if (global.game_state != GameState.GAME_RUNNING) {$(13_10)	if (next_hole != noone) {$(13_10)		room_goto(next_hole);$(13_10)	} else {$(13_10)		room_goto_next();$(13_10)	}$(13_10)	$(13_10)}"
if (global.game_state != GameState.GAME_RUNNING) {
	if (next_hole != noone) {
		room_goto(next_hole);
	} else {
		room_goto_next();
	}
	
}