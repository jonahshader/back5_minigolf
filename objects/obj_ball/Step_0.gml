/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 27A0EB5F
/// @DnDArgument : "expr" "global.game_state == GameState.GAME_RUNNING"
if(global.game_state == GameState.GAME_RUNNING)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7A23DC02
	/// @DnDParent : 27A0EB5F
	/// @DnDArgument : "expr" "target_tube == noone"
	if(target_tube == noone)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 123D26E1
		/// @DnDParent : 7A23DC02
		/// @DnDArgument : "var" "friction_vel"
		/// @DnDArgument : "value" "(CONST_FRICTION + PROPORTIONAL_FRICTION * speed) * friction_multiplier"
		var friction_vel = (CONST_FRICTION + PROPORTIONAL_FRICTION * speed) * friction_multiplier;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3D453B53
		/// @DnDParent : 7A23DC02
		/// @DnDArgument : "expr" "speed > friction_vel"
		if(speed > friction_vel)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C713062
			/// @DnDInput : 2
			/// @DnDParent : 3D453B53
			/// @DnDArgument : "expr" "-friction_vel"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "var_1" "ready_to_hit"
			speed += -friction_vel;
			ready_to_hit = false;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2CC7534B
		/// @DnDParent : 7A23DC02
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 64BC2F40
			/// @DnDInput : 2
			/// @DnDParent : 2CC7534B
			/// @DnDArgument : "expr_1" "true"
			/// @DnDArgument : "var" "speed"
			/// @DnDArgument : "var_1" "ready_to_hit"
			speed = 0;
			ready_to_hit = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2ED24E85
		/// @DnDParent : 7A23DC02
		/// @DnDArgument : "code" "// calculate hit magnitude$(13_10)var mouse_x_to_ball = x - mouse_x;$(13_10)var mouse_y_to_ball = y - mouse_y;$(13_10)var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);$(13_10)$(13_10)$(13_10)magnitude *= MOUSE_DIST_TO_SPEED;$(13_10)if (magnitude > MAX_HIT_SPEED) {$(13_10)	magnitude = MAX_HIT_SPEED;$(13_10)}$(13_10)$(13_10)hit_magnitude = magnitude;$(13_10)$(13_10)// calculate potential wall collision$(13_10)var collider = instance_place(x + hspeed, y + vspeed, obj_wall);$(13_10)move_bounce_solid(true);$(13_10)if (collider != noone) {$(13_10)	speed *= collider.bounciness;$(13_10)	$(13_10)	// Set Audio Volume$(13_10)	audio_sound_gain(collider.bounce_sound, (magnitude/ MAX_HIT_SPEED) * .5, 0);$(13_10)	// Play Audio$(13_10)	audio_play_sound(collider.bounce_sound, 1, 0);$(13_10)}$(13_10)"
		// calculate hit magnitude
		var mouse_x_to_ball = x - mouse_x;
		var mouse_y_to_ball = y - mouse_y;
		var magnitude = sqrt(mouse_x_to_ball * mouse_x_to_ball + mouse_y_to_ball * mouse_y_to_ball);
		
		
		magnitude *= MOUSE_DIST_TO_SPEED;
		if (magnitude > MAX_HIT_SPEED) {
			magnitude = MAX_HIT_SPEED;
		}
		
		hit_magnitude = magnitude;
		
		// calculate potential wall collision
		var collider = instance_place(x + hspeed, y + vspeed, obj_wall);
		move_bounce_solid(true);
		if (collider != noone) {
			speed *= collider.bounciness;
			
			// Set Audio Volume
			audio_sound_gain(collider.bounce_sound, (magnitude/ MAX_HIT_SPEED) * .5, 0);
			// Play Audio
			audio_play_sound(collider.bounce_sound, 1, 0);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41D657FC
		/// @DnDParent : 7A23DC02
		/// @DnDArgument : "expr" "speed"
		/// @DnDArgument : "var" "last_speed"
		last_speed = speed;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 74EB6D13
	/// @DnDComment : there is a target tube, so go to it
	/// @DnDParent : 27A0EB5F
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 19A08117
		/// @DnDParent : 74EB6D13
		/// @DnDArgument : "x" "target_tube.x"
		/// @DnDArgument : "y" "target_tube.y"
		direction = point_direction(x, y, target_tube.x, target_tube.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 08B92262
		/// @DnDParent : 74EB6D13
		/// @DnDArgument : "speed" "max(speed, 4)"
		speed = max(speed, 4);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 33C9D851
		/// @DnDParent : 74EB6D13
		/// @DnDArgument : "code" "if (instance_place(x, y, target_tube)) {$(13_10)	var tube_angle = target_tube.image_angle * pi / 180;$(13_10)	while (instance_place(x, y, target_tube)) {$(13_10)		x += cos(tube_angle);$(13_10)		y -= sin(tube_angle);$(13_10)	}$(13_10)//	x += cos(tube_angle) * sprite_width;$(13_10)//	y -= sin(tube_angle) * sprite_width;$(13_10)	$(13_10)	target_tube = noone;$(13_10)	speed = last_speed;$(13_10)}"
		if (instance_place(x, y, target_tube)) {
			var tube_angle = target_tube.image_angle * pi / 180;
			while (instance_place(x, y, target_tube)) {
				x += cos(tube_angle);
				y -= sin(tube_angle);
			}
		//	x += cos(tube_angle) * sprite_width;
		//	y -= sin(tube_angle) * sprite_width;
			
			target_tube = noone;
			speed = last_speed;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 393F2C3C
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4E095785
	/// @DnDParent : 393F2C3C
	/// @DnDArgument : "code" "vspeed = 0;$(13_10)hspeed = 0;"
	vspeed = 0;
	hspeed = 0;
}