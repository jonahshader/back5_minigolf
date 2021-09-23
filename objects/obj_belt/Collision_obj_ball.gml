/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0FFCA955
/// @DnDArgument : "code" "var angle = image_angle * pi / 180;$(13_10)$(13_10)var x_vel_add = cos(angle);$(13_10)var y_vel_add = -sin(angle);$(13_10)$(13_10)var ball_belt_dot = cos(angle) * other.hspeed + sin(angle) * other.vspeed;$(13_10)$(13_10)$(13_10)//ball_belt_dot /= other.speed;$(13_10)$(13_10)//var vel_scale = (belt_speed + .25) / (ball_belt_dot + .25)$(13_10)var vel_scale = (belt_speed * 2 - ball_belt_dot) * .5;$(13_10)vel_scale = max(0, vel_scale);$(13_10)vel_scale = min(CONST_FRICTION * 10 * belt_speed, vel_scale);$(13_10)$(13_10)x_vel_add *= vel_scale;$(13_10)y_vel_add *= vel_scale;$(13_10)$(13_10)other.hspeed += x_vel_add;$(13_10)other.vspeed += y_vel_add;"
var angle = image_angle * pi / 180;

var x_vel_add = cos(angle);
var y_vel_add = -sin(angle);

var ball_belt_dot = cos(angle) * other.hspeed + sin(angle) * other.vspeed;


//ball_belt_dot /= other.speed;

//var vel_scale = (belt_speed + .25) / (ball_belt_dot + .25)
var vel_scale = (belt_speed * 2 - ball_belt_dot) * .5;
vel_scale = max(0, vel_scale);
vel_scale = min(CONST_FRICTION * 10 * belt_speed, vel_scale);

x_vel_add *= vel_scale;
y_vel_add *= vel_scale;

other.hspeed += x_vel_add;
other.vspeed += y_vel_add;