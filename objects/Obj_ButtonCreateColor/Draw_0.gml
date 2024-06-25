event_inherited()

if colorIndex == Obj_Grid.pickedColor {
	depth = -10
	draw_set_color(c_red)
	var lw = 2
	var o = 1
	var buttonSize = sprite_get_width(buttonSprite)*image_xscale
	for(var i = 0; i < 2; i++) {
		// Vertical Lines
		draw_line_width(x+buttonSize*i, y-o, x+buttonSize*i, y+buttonSize+o, lw)
		// Horizontal Lines
		draw_line_width(x-o, y+buttonSize*i, x+buttonSize+o, y+buttonSize*i, lw)
	}
} else {depth = 0}