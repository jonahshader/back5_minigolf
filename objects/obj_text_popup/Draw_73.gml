/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 23BE92A1
/// @DnDArgument : "font" "fnt_body"
/// @DnDSaveInfo : "font" "fnt_body"
draw_set_font(fnt_body);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4CF9FB5D
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 39BA3F8F
draw_set_colour($FFFFFFFF & $ffffff);
var l39BA3F8F_0=($FFFFFFFF >> 24);
draw_set_alpha(l39BA3F8F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 12902284
/// @DnDArgument : "alpha" "opacity/255.0"
draw_set_alpha(opacity/255.0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1E1DA50D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "text"
draw_text(x + 0, y + 0, string("") + string(text));

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 53D5B49C
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l53D5B49C_0=($FF000000 >> 24);
draw_set_alpha(l53D5B49C_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 4846FB1E
/// @DnDArgument : "alpha" "opacity/512.0"
draw_set_alpha(opacity/512.0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 40D803DB
/// @DnDArgument : "x" "1"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "text"
draw_text(x + 1, y + 1, string("") + string(text));

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5F70B53A
draw_set_alpha(1);