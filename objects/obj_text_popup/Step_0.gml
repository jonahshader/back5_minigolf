/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
/// @DnDVersion : 1.1
/// @DnDHash : 663A3D90
/// @DnDArgument : "direction" "90"
direction = 90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 30F1BABA
/// @DnDArgument : "speed" ".5"
speed = .5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7677B433
/// @DnDArgument : "expr" "-1.5"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "opacity"
opacity += -1.5;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 27CC0324
/// @DnDArgument : "expr" "opacity <= 0"
if(opacity <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0E490B4D
	/// @DnDParent : 27CC0324
	instance_destroy();
}