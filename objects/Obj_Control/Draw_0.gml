if global.debug {
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_color(c_red)
	draw_text(room_width, room_height, instance_number(Obj_Control))
}