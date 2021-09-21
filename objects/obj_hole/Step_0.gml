var nearest_ball = instance_nearest(x, y, obj_ball);

if (nearest_ball != noone) {
	if (distance_to_object(nearest_ball) < BALL_ATTRACT_RADIUS) {
		var xd = nearest_ball.x - x;
		var yd = nearest_ball.y - y;
		var mag = sqrt(xd * xd + yd * yd);
		xd /= mag;
		yd /= mag;
		
		nearest_ball.hspeed -= xd * BALL_ATTRACT_SPEED;
		nearest_ball.vspeed -= yd * BALL_ATTRACT_SPEED;
	}
}

