/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 087C0143
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "(powerup_nullify_enabled == false) && (target_tube == noone)"
with(other) var l087C0143_0 = (powerup_nullify_enabled == false) && (target_tube == noone);
if(l087C0143_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50D910D5
	/// @DnDApplyTo : other
	/// @DnDParent : 087C0143
	/// @DnDArgument : "expr" "x_last_hit"
	/// @DnDArgument : "var" "x"
	with(other) {
	x = x_last_hit;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B451C9D
	/// @DnDApplyTo : other
	/// @DnDParent : 087C0143
	/// @DnDArgument : "expr" "y_last_hit"
	/// @DnDArgument : "var" "y"
	with(other) {
	y = y_last_hit;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DDA8192
	/// @DnDApplyTo : other
	/// @DnDParent : 087C0143
	/// @DnDArgument : "var" "hspeed"
	with(other) {
	hspeed = 0;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1023F465
	/// @DnDApplyTo : other
	/// @DnDParent : 087C0143
	/// @DnDArgument : "var" "vspeed"
	with(other) {
	vspeed = 0;
	
	}
}