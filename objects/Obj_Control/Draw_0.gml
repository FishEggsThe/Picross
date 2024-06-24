if global.debug {
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_color(c_red)
	draw_text(room_width, room_height, instance_number(Obj_Control))
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)
for(var i = 0; i < 20; i++)
	draw_text(0, 0+i*24, global.colors[i])