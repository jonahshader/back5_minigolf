/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2F3F2287
/// @DnDArgument : "code" "if (door != noone) {$(13_10)	door.open_door();$(13_10)}"
if (door != noone) {
	door.open_door();
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3B0E005D
/// @DnDArgument : "colour" "$FFFF6B42"
image_blend = $FFFF6B42 & $ffffff;
image_alpha = ($FFFF6B42 >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2B81B151
alarm_set(0, 30);