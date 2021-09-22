/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 14BA7354
/// @DnDArgument : "expr" "transfer_color"
if(transfer_color)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7BDBE15A
	/// @DnDComment : apply color to ball to indicate$(13_10)that the ball has the powerup effect
	/// @DnDApplyTo : other
	/// @DnDParent : 14BA7354
	/// @DnDArgument : "color" "powerup_color"
	with(other) {
	draw_set_colour(powerup_color & $ffffff);
	var l7BDBE15A_0=(powerup_color >> 24);
	draw_set_alpha(l7BDBE15A_0 / $ff);
	}
}