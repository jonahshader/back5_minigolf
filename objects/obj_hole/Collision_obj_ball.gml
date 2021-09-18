/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1EDABB06
/// @DnDArgument : "code" "// destroy nearest ball$(13_10)var nearest_ball = instance_nearest(x, y, obj_ball);$(13_10)instance_destroy(nearest_ball);$(13_10)$(13_10)// change game state$(13_10)// TODO: this can probably be cleaned up by subtracting par_strokes from current strokes$(13_10)// and using a switch statement for most case.$(13_10)if (global.current_strokes == 1) {$(13_10)	global.game_state = GameState.HOLE_IN_ONE;$(13_10)} else if (global.current_strokes == par_strokes - 3) {$(13_10)	global.game_state = GameState.ALBATROSS;$(13_10)} else if (global.current_strokes == par_strokes - 2) {$(13_10)	global.game_state = GameState.EAGLE;$(13_10)} else if (global.current_strokes == par_strokes - 1) {$(13_10)	global.game_state = GameState.BIRDIE;$(13_10)} else if (global.current_strokes == par_strokes) {$(13_10)	global.game_state = GameState.PAR;$(13_10)} else if (global.current_strokes == par_strokes + 1) {$(13_10)	global.game_state = GameState.BOGEY;$(13_10)} else if (global.current_strokes == par_strokes + 2) {$(13_10)	global.game_state = GameState.DOUBLE_BOGEY;$(13_10)} else if (par_strokes > global.current_strokes) {$(13_10)	global.game_state = GameState.OVER_MAX;$(13_10)} else {$(13_10)	global.game_state = GameState.BETTER_THAN_ALBATROSS;$(13_10)}"
// destroy nearest ball
var nearest_ball = instance_nearest(x, y, obj_ball);
instance_destroy(nearest_ball);

// change game state
// TODO: this can probably be cleaned up by subtracting par_strokes from current strokes
// and using a switch statement for most case.
if (global.current_strokes == 1) {
	global.game_state = GameState.HOLE_IN_ONE;
} else if (global.current_strokes == par_strokes - 3) {
	global.game_state = GameState.ALBATROSS;
} else if (global.current_strokes == par_strokes - 2) {
	global.game_state = GameState.EAGLE;
} else if (global.current_strokes == par_strokes - 1) {
	global.game_state = GameState.BIRDIE;
} else if (global.current_strokes == par_strokes) {
	global.game_state = GameState.PAR;
} else if (global.current_strokes == par_strokes + 1) {
	global.game_state = GameState.BOGEY;
} else if (global.current_strokes == par_strokes + 2) {
	global.game_state = GameState.DOUBLE_BOGEY;
} else if (par_strokes > global.current_strokes) {
	global.game_state = GameState.OVER_MAX;
} else {
	global.game_state = GameState.BETTER_THAN_ALBATROSS;
}