/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 29A0C5D2
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 64F3A740
/// @DnDArgument : "code" "var new_ball_1 = instance_create_layer(x, y, layer, obj_ball);$(13_10)var new_ball_2 = instance_create_layer(x, y, layer, obj_ball);$(13_10)$(13_10)// copy some variables$(13_10)new_ball_1.hspeed = other.hspeed;$(13_10)new_ball_1.vspeed = other.vspeed;$(13_10)new_ball_1.x += 1;$(13_10)new_ball_1.x_last_hit += 1;$(13_10)//new_ball_1.x_last_hit = other.x_last_hit;$(13_10)//new_ball_1.y_last_hit = other.y_last_hit;$(13_10)$(13_10)new_ball_2.hspeed = other.hspeed;$(13_10)new_ball_2.vspeed = other.vspeed;$(13_10)new_ball_2.x -= 1;$(13_10)new_ball_2.x_last_hit -= 1;$(13_10)//new_ball_2.x_last_hit = other.x_last_hit;$(13_10)//new_ball_2.y_last_hit = other.y_last_hit;$(13_10)$(13_10)new_ball_1.direction += 45;$(13_10)new_ball_2.direction -= 45;"
var new_ball_1 = instance_create_layer(x, y, layer, obj_ball);
var new_ball_2 = instance_create_layer(x, y, layer, obj_ball);

// copy some variables
new_ball_1.hspeed = other.hspeed;
new_ball_1.vspeed = other.vspeed;
new_ball_1.x += 1;
new_ball_1.x_last_hit += 1;
//new_ball_1.x_last_hit = other.x_last_hit;
//new_ball_1.y_last_hit = other.y_last_hit;

new_ball_2.hspeed = other.hspeed;
new_ball_2.vspeed = other.vspeed;
new_ball_2.x -= 1;
new_ball_2.x_last_hit -= 1;
//new_ball_2.x_last_hit = other.x_last_hit;
//new_ball_2.y_last_hit = other.y_last_hit;

new_ball_1.direction += 45;
new_ball_2.direction -= 45;