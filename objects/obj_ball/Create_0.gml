/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 3B402565
/// @DnDComment : CONST_FRICTION is applied to the ball every frame it is moving$(13_10)PROPORTIONAL_FRICTION is multiplied by the ball's current speed$(13_10)and then is applied to the ball every frame
/// @DnDInput : 5
/// @DnDArgument : "macro" "CONST_FRICTION"
/// @DnDArgument : "value" ".01"
/// @DnDArgument : "macro_1" "PROPORTIONAL_FRICTION"
/// @DnDArgument : "value_1" ".002"
/// @DnDArgument : "macro_2" "MAX_HIT_SPEED"
/// @DnDArgument : "value_2" "8"
/// @DnDArgument : "macro_3" "MOUSE_DIST_TO_SPEED"
/// @DnDArgument : "value_3" ".08"
/// @DnDArgument : "macro_4" "HIT_LINE_MAX_LENGTH"
/// @DnDArgument : "value_4" "(MAX_HIT_SPEED / MOUSE_DIST_TO_SPEED)"
#macro CONST_FRICTION .01
#macro PROPORTIONAL_FRICTION .002
#macro MAX_HIT_SPEED 8
#macro MOUSE_DIST_TO_SPEED .08
#macro HIT_LINE_MAX_LENGTH (MAX_HIT_SPEED / MOUSE_DIST_TO_SPEED)

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D3E3D3A
/// @DnDComment : friction_multiplier simply multiplies the combined calculated friction from$(13_10)the two macros CONST_FRICTION and PROPORTIONAL_FRICTION. differing$(13_10)surfaces like grass, sand, ice, etc can manipulate this variable when$(13_10)the ball is over that surface. for example, sand might set the$(13_10)friction_multiplier to 3 or something whereas ice would set it to 0.5.$(13_10)$(13_10)ready_to_hit is true when the ball is motionless$(13_10)$(13_10)mouse_dragging is true when the user clicks the screen while ready_to_hit is true$(13_10)$(13_10)hit_magnitude is the speed that will be added when the ball is hit. it is$(13_10)used in the hit line calculation
/// @DnDInput : 6
/// @DnDArgument : "expr" "1.0"
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "var" "friction_multiplier"
/// @DnDArgument : "var_1" "ready_to_hit"
/// @DnDArgument : "var_2" "mouse_dragging"
/// @DnDArgument : "var_3" "hit_magnitude"
/// @DnDArgument : "var_4" "x_last_hit"
/// @DnDArgument : "var_5" "y_last_hit"
friction_multiplier = 1.0;
ready_to_hit = true;
mouse_dragging = false;
hit_magnitude = 0;
x_last_hit = 0;
y_last_hit = 0;

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 79F309A1
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.game_state"
/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 454F1239
/// @DnDParent : 79F309A1
/// @DnDArgument : "value" "GameState.GAME_RUNNING"
/// @DnDArgument : "var" "game_state"
global.game_state = GameState.GAME_RUNNING;