/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7BF28F7C
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "powerup_nullify_enabled == false"
with(other) var l7BF28F7C_0 = powerup_nullify_enabled == false;
if(l7BF28F7C_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C89F22E
	/// @DnDApplyTo : other
	/// @DnDParent : 7BF28F7C
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "friction_multiplier"
	with(other) {
	friction_multiplier = 10;
	
	}
}