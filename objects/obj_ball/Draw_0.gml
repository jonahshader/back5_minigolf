/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1541C214
/// @DnDArgument : "expr" "target_tube == noone"
if(target_tube == noone)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 799DBB5F
	/// @DnDParent : 1541C214
	/// @DnDArgument : "colour" "draw_color"
	/// @DnDArgument : "alpha" "false"
	image_blend = draw_color & $ffffff;

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 6EF8A2EC
	/// @DnDParent : 1541C214
	draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 22989BCB
	/// @DnDParent : 1541C214
	draw_self();
}