var x_average = 0.0;
var y_average = 0.0;
if(instance_exists(obj_ball)){
x_min = obj_ball.x;
x_max = x_min;
y_min = obj_ball.y;
y_max = y_min;

for (var i = 0; i < instance_number(obj_ball); ++i) {
	var ball = instance_find(obj_ball, i)
	x_average += ball.x;
	y_average += ball.y;
	
	if (ball.x < x_min) x_min = ball.x;
	if (ball.x > x_max) x_max = ball.x;
	if (ball.y < y_min) y_min = ball.y;
	if (ball.y > y_max) y_max = ball.y;
}

var buffer = 35;
x_max += buffer;
y_max += buffer;
x_min -= buffer;
y_min -= buffer;
if (x_max - x_min > MIN_WIDTH || y_max - y_min > MIN_HEIGHT) {
	var x_scale = (x_max - x_min) / MIN_WIDTH;
	var y_scale = (y_max- y_min) / MIN_HEIGHT;
	var max_scale = max(x_scale, y_scale);
	
	camera_set_view_size(view_camera[0], MIN_WIDTH * max_scale, MIN_HEIGHT * max_scale);
	
} else {
	camera_set_view_size(view_camera[0], MIN_WIDTH, MIN_HEIGHT);
}

	

//x = x_average / instance_number(obj_ball);
//y = y_average / instance_number(obj_ball);

x = (x_min + x_max) / 2;
y = (y_min + y_max) / 2;
}