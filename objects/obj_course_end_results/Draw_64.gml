/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 07EEB8B2
draw_set_colour($FFFFFFFF & $ffffff);
var l07EEB8B2_0=($FFFFFFFF >> 24);
draw_set_alpha(l07EEB8B2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 001AC058
/// @DnDArgument : "x1" "100"
/// @DnDArgument : "y1" "80"
/// @DnDArgument : "x2" "room_width  - 100"
/// @DnDArgument : "y2" "room_height - 80"
/// @DnDArgument : "fill" "1"
draw_rectangle(100, 80, room_width  - 100, room_height - 80, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 76E7F854
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l76E7F854_0=($FF000000 >> 24);
draw_set_alpha(l76E7F854_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 27C5C54B
/// @DnDArgument : "font" "fnt_heading"
/// @DnDSaveInfo : "font" "fnt_heading"
draw_set_font(fnt_heading);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 1D838B10
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3F3D57E9
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "(room_height/2) - 60"
/// @DnDArgument : "caption" "course_name + " Course Results:""
/// @DnDArgument : "var" """"
draw_text(room_width / 2, (room_height/2) - 60, string(course_name + " Course Results:") + string(""));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 300530B8
/// @DnDArgument : "x" "(room_width / 2)"
/// @DnDArgument : "y" "(room_height / 2)"
/// @DnDArgument : "caption" ""Course par: ""
/// @DnDArgument : "var" "global.course_par_strokes"
draw_text((room_width / 2), (room_height / 2), string("Course par: ") + string(global.course_par_strokes));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 26E50BC3
/// @DnDArgument : "x" "(room_width / 2)"
/// @DnDArgument : "y" "(room_height / 2) + 60"
/// @DnDArgument : "caption" ""Your score: ""
/// @DnDArgument : "var" "global.course_strokes"
draw_text((room_width / 2), (room_height / 2) + 60, string("Your score: ") + string(global.course_strokes));