var guiWidth = display_get_gui_width();
var guiHeight = display_get_gui_height();

// Grid Complete Text
draw_set_halign(fa_center)
if gridComplete{
	completeTextSize = clamp(completeTextSize+completeTextSizeIncrease, 0, completeTextSizeMax)

	draw_text_transformed(guiWidth/2, guiHeight/2, "Grid Complete!!!", 
						  completeTextSize, completeTextSize, sin(current_time))
}

if global.debug {
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text(2, 2, pickedColor)
}