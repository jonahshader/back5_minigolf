/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5BA83460
/// @DnDArgument : "code" "if (open_timer == 0) {$(13_10)	open_progress -= .025;$(13_10)} else {$(13_10)	open_progress += .025;$(13_10)	open_timer--;$(13_10)}$(13_10)$(13_10)open_progress = max(0, open_progress);$(13_10)open_progress = min(1, open_progress);$(13_10)$(13_10)var dir = image_angle * pi / 180;$(13_10)$(13_10)x = x_start + cos(dir) * sprite_width * open_progress * max(image_xscale, image_yscale);$(13_10)y = y_start - sin(dir) * sprite_height * open_progress * max(image_xscale, image_yscale);"
if (open_timer == 0) {
	open_progress -= .025;
} else {
	open_progress += .025;
	open_timer--;
}

open_progress = max(0, open_progress);
open_progress = min(1, open_progress);

var dir = image_angle * pi / 180;

x = x_start + cos(dir) * sprite_width * open_progress * max(image_xscale, image_yscale);
y = y_start - sin(dir) * sprite_height * open_progress * max(image_xscale, image_yscale);