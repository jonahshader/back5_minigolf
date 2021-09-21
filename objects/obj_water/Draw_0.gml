/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7EF20FB0
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3DD5B5C0
/// @DnDArgument : "code" "draw_sprite(spr_waves,0,x,y+sin(current_time * .005));$(13_10)"
draw_sprite(spr_waves,0,x,y+sin(current_time * .005));