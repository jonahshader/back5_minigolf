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
/// @DnDArgument : "y" "55"
/// @DnDArgument : "caption" ""Strokes: ""
/// @DnDArgument : "var" "global.current_strokes"
draw_text(60, 55, string("Strokes: ") + string(global.current_strokes));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 33C05F74
/// @DnDArgument : "x" "60"
/// @DnDArgument : "y" "25"
/// @DnDArgument : "caption" ""Par: ""
/// @DnDArgument : "var" "par_strokes"
draw_text(60, 25, string("Par: ") + string(par_strokes));

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 79582BC6
/// @DnDArgument : "expr" "global.game_state != GameState.GAME_RUNNING"
if(global.game_state != GameState.GAME_RUNNING)
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
	/// @DnDArgument : "x1" "150"
	/// @DnDArgument : "y1" "100"
	/// @DnDArgument : "x2" "room_width - 150"
	/// @DnDArgument : "y2" "room_height - 100"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(150, 100, room_width - 150, room_height - 100, 0);

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
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 569D8012
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "x" "room_width / 2"
	/// @DnDArgument : "y" "-40 + room_height / 2"
	/// @DnDArgument : "caption" ""Hole " + string(global.level_number) + " Complete""
	draw_text(room_width / 2, -40 + room_height / 2, string("Hole " + string(global.level_number) + " Complete") + "");

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4CBAD7D3
	/// @DnDParent : 79582BC6
	/// @DnDArgument : "code" "function drawGameInfo(game_state_text) {$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_valign(fa_middle);$(13_10)	draw_set_color(0xFF000000);$(13_10)	draw_text(room_width/2, 00 + room_height/2, game_state_text); $(13_10)}$(13_10)$(13_10)var game_state_text = "";$(13_10)switch (global.game_state) {$(13_10)	default:$(13_10)	case GameState.GAME_RUNNING: break;$(13_10)	case GameState.HOLE_IN_ONE: game_state_text = "Hole In One!"; break;$(13_10)	case GameState.BETTER_THAN_ALBATROSS: game_state_text = string(par_strokes - global.current_strokes) + " Under!"; break;$(13_10)	case GameState.ALBATROSS: game_state_text = "Albatross!"; break;$(13_10)	case GameState.EAGLE: game_state_text = "Eagle!"; break;$(13_10)	case GameState.BIRDIE: game_state_text = "Birdie!"; break;$(13_10)	case GameState.PAR: game_state_text = "Par"; break;$(13_10)	case GameState.BOGEY: game_state_text = "Bogey"; break;$(13_10)	case GameState.DOUBLE_BOGEY: game_state_text = "Double Bogey"; break;$(13_10)	case GameState.OVER_MAX: game_state_text = string(global.current_strokes - par_strokes) + " Over..."; break;$(13_10)}$(13_10)$(13_10)drawGameInfo(game_state_text);$(13_10)$(13_10)draw_set_halign(fa_center);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_color(0xFF000000);$(13_10)draw_set_font(fnt_body);$(13_10)draw_text(room_width/2, 40 + room_height/2, "Press any key to continue."); "
	function drawGameInfo(game_state_text) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(0xFF000000);
		draw_text(room_width/2, 00 + room_height/2, game_state_text); 
	}
	
	var game_state_text = "";
	switch (global.game_state) {
		default:
		case GameState.GAME_RUNNING: break;
		case GameState.HOLE_IN_ONE: game_state_text = "Hole In One!"; break;
		case GameState.BETTER_THAN_ALBATROSS: game_state_text = string(par_strokes - global.current_strokes) + " Under!"; break;
		case GameState.ALBATROSS: game_state_text = "Albatross!"; break;
		case GameState.EAGLE: game_state_text = "Eagle!"; break;
		case GameState.BIRDIE: game_state_text = "Birdie!"; break;
		case GameState.PAR: game_state_text = "Par"; break;
		case GameState.BOGEY: game_state_text = "Bogey"; break;
		case GameState.DOUBLE_BOGEY: game_state_text = "Double Bogey"; break;
		case GameState.OVER_MAX: game_state_text = string(global.current_strokes - par_strokes) + " Over..."; break;
	}
	
	drawGameInfo(game_state_text);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(0xFF000000);
	draw_set_font(fnt_body);
	draw_text(room_width/2, 40 + room_height/2, "Press any key to continue.");
}