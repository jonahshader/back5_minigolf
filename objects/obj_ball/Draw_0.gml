/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 799DBB5F
/// @DnDArgument : "colour" "draw_color"
/// @DnDArgument : "alpha" "false"
image_blend = draw_color & $ffffff;

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 6EF8A2EC
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 22989BCB
draw_self();