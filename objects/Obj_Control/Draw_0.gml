if global.debug {
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_color(c_red)
	draw_text(room_width, room_height, instance_number(Obj_Control))
}

draw_set_halign(fa_left)
draw_set_valign(fa_top)
for(var i = 0; i < array_length(global.colors); i++)
	draw_text(10, 10+i*20, global.colors[i])