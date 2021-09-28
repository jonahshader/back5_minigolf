/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6DA5EE15
/// @DnDArgument : "soundid" "snd_powerup_get"
/// @DnDSaveInfo : "soundid" "snd_powerup_get"
audio_play_sound(snd_powerup_get, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 14BA7354
/// @DnDArgument : "expr" "transfer_color"
if(transfer_color)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 010FEA42
	/// @DnDParent : 14BA7354
	/// @DnDArgument : "code" "other.draw_color = powerup_color;"
	other.draw_color = powerup_color;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06560BC6
/// @DnDArgument : "code" "var text_popup_instance = instance_create_layer(x, y - 16, layer, obj_text_popup);$(13_10)text_popup_instance.text = text_popup; // does this work?"
var text_popup_instance = instance_create_layer(x, y - 16, layer, obj_text_popup);
text_popup_instance.text = text_popup; // does this work?

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3477BF04
instance_destroy();