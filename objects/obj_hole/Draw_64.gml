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