/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 35077FEC
/// @DnDArgument : "code" "// secret skip for debugging$(13_10)if (keyboard_check(ord("A")) && keyboard_check(ord("F"))) {$(13_10)	global.level_number = global.level_number + 1;$(13_10)	global.course_strokes += par_strokes;$(13_10)	room_goto_next();$(13_10)}"
// secret skip for debugging
if (keyboard_check(ord("A")) && keyboard_check(ord("F"))) {
	global.level_number = global.level_number + 1;
	global.course_strokes += par_strokes;
	room_goto_next();
}