/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0237B5B7
/// @DnDArgument : "expr" "mouse_dragging"
if(mouse_dragging)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EBC0E6F
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "mouse_dragging"
	mouse_dragging = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3037F848
	/// @DnDInput : 2
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "global.current_strokes"
	/// @DnDArgument : "var_1" "global.course_strokes"
	global.current_strokes += 1;
	global.course_strokes += 1;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 749C4C9F
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "code" "var mouse_x_to_ball = x - mouse_x;$(13_10)var mouse_y_to_ball = y - mouse_y;$(13_10)var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);$(13_10)$(13_10)x_last_hit = x;	// saves position for current hit$(13_10)y_last_hit = y;$(13_10)$(13_10)mouse_x_to_ball /= magnitude; // normalize$(13_10)mouse_y_to_ball /= magnitude;$(13_10)$(13_10)magnitude *= MOUSE_DIST_TO_SPEED;$(13_10)if (magnitude > MAX_HIT_SPEED) {$(13_10)	magnitude = MAX_HIT_SPEED;$(13_10)}$(13_10)$(13_10)mouse_x_to_ball *= magnitude;$(13_10)mouse_y_to_ball *= magnitude;$(13_10)$(13_10)hspeed += mouse_x_to_ball;$(13_10)vspeed += mouse_y_to_ball;"
	var mouse_x_to_ball = x - mouse_x;
	var mouse_y_to_ball = y - mouse_y;
	var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);
	
	x_last_hit = x;	// saves position for current hit
	y_last_hit = y;
	
	mouse_x_to_ball /= magnitude; // normalize
	mouse_y_to_ball /= magnitude;
	
	magnitude *= MOUSE_DIST_TO_SPEED;
	if (magnitude > MAX_HIT_SPEED) {
		magnitude = MAX_HIT_SPEED;
	}
	
	mouse_x_to_ball *= magnitude;
	mouse_y_to_ball *= magnitude;
	
	hspeed += mouse_x_to_ball;
	vspeed += mouse_y_to_ball;

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 689DF16F
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "sound" "snd_ball_putt"
	/// @DnDArgument : "pitch" "(magnitude / MAX_HIT_SPEED) + .5"
	/// @DnDSaveInfo : "sound" "snd_ball_putt"
	audio_sound_pitch(snd_ball_putt, (magnitude / MAX_HIT_SPEED) + .5);

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 0D046C13
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "sound" "snd_ball_putt"
	/// @DnDArgument : "volume" "(magnitude / MAX_HIT_SPEED) /1.1"
	/// @DnDSaveInfo : "sound" "snd_ball_putt"
	audio_sound_gain(snd_ball_putt, (magnitude / MAX_HIT_SPEED) /1.1, 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3E651DAE
	/// @DnDParent : 0237B5B7
	/// @DnDArgument : "soundid" "snd_ball_putt"
	/// @DnDSaveInfo : "soundid" "snd_ball_putt"
	audio_play_sound(snd_ball_putt, 0, 0);
}