/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1E497802
/// @DnDArgument : "color" "$85FFFFFF"
draw_set_colour($85FFFFFF & $ffffff);
var l1E497802_0=($85FFFFFF >> 24);
draw_set_alpha(l1E497802_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 6F3632AB
/// @DnDArgument : "x1" "10"
/// @DnDArgument : "y1" "70"
/// @DnDArgument : "x2" "110"
/// @DnDArgument : "y2" "10"
/// @DnDArgument : "fill" "1"
draw_rectangle(10, 70, 110, 10, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2C2256F3
/// @DnDArgument : "font" "fnt_body"
/// @DnDSaveInfo : "font" "fnt_body"
draw_set_font(fnt_body);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 39E7840C
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 668DBF23
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l668DBF23_0=($FF000000 >> 24);
draw_set_alpha(l668DBF23_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2CFADD5B
/// @DnDArgument : "x" "60"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""Strokes: ""
/// @DnDArgument : "var" "global.current_strokes"
draw_text(60, 40, string("Strokes: ") + string(global.current_strokes));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 79582BC6
/// @DnDArgument : "expr" "game_finished"
if(game_finished)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4D9AE585
	/// @DnDParent : 79582BC6
	draw_set_colour($FFFFFFFF & $ffffff);
	var l4D9AE585_0=($FFFFFFFF >> 24);
	draw_set_alpha(l4D9AE585_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 46E3A60E
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "x1" "200"
	/// @DnDArgument : "y1" "100"
	/// @DnDArgument : "x2" "room_width - 200"
	/// @DnDArgument : "y2" "room_height - 100"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(200, 100, room_width - 200, room_height - 100, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 017BF027
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l017BF027_0=($FF000000 >> 24);
	draw_set_alpha(l017BF027_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 46C11CEA
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "font" "fnt_heading"
	/// @DnDSaveInfo : "font" "fnt_heading"
	draw_set_font(fnt_heading);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0E2CD53E
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 569D8012
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "x" "room_width / 2"
	/// @DnDArgument : "y" "room_height / 2"
	/// @DnDArgument : "caption" ""Level " + string(level_number) + " Complete!""
	draw_text(room_width / 2, room_height / 2, string("Level " + string(level_number) + " Complete!") + "");
}