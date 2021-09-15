/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B36C68C
/// @DnDArgument : "code" "var colliding_wall = collision_circle(x, y, BALL_RADIUS, obj_wall, true, true);$(13_10)$(13_10)if (colliding_wall != noone) {$(13_10)	//var d = dot_product(colliding_wall.image_angle$(13_10)}"
var colliding_wall = collision_circle(x, y, BALL_RADIUS, obj_wall, true, true);

if (colliding_wall != noone) {
	//var d = dot_product(colliding_wall.image_angle
}