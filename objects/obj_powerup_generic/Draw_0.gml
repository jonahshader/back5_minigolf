/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 211713FB
/// @DnDArgument : "colour" "powerup_color"
/// @DnDArgument : "alpha" "false"
image_blend = powerup_color & $ffffff;

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 3260D527
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 38E6DFA5
draw_self();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0AB60F2A
/// @DnDArgument : "expr" "overlay_sprite != noone"
if(overlay_sprite != noone)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 342417CB
	/// @DnDParent : 0AB60F2A
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "overlay_sprite"
	draw_sprite(overlay_sprite, 0, x + 0, y + 0);
}