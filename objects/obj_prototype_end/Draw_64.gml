/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 210C7559
/// @DnDArgument : "font" "fnt_heading"
/// @DnDSaveInfo : "font" "fnt_heading"
draw_set_font(fnt_heading);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5DCFE1DE
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2A8EC71D
draw_set_colour($FFFFFFFF & $ffffff);
var l2A8EC71D_0=($FFFFFFFF >> 24);
draw_set_alpha(l2A8EC71D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1BDC29CE
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "caption" ""End of prototype. Thanks for playing!""
draw_text(room_width/2, room_height/2, string("End of prototype. Thanks for playing!") + "");