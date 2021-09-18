if (global.game_state == GameState.GAME_RUNNING) {
	var nearest_ball_to_mouse = instance_nearest(mouse_x, mouse_y, obj_ball);
	var this = instance_nearest(x, y, obj_ball);


	if(nearest_ball_to_mouse == this) {
		if(ready_to_hit) {
			mouse_dragging = true;
		}
	}
}
