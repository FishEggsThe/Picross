draw_set_color(c_red)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
for(var i = 0; i < columns; i++){
	draw_text(x+blockSize/2+i*blockSize, y-10-string_height(numberLabelsX[i]), numberLabelsX[i])
}

draw_set_valign(fa_middle)
draw_set_halign(fa_right)
for(var i = 0; i < rows; i++){
	draw_text(x-15, y+blockSize/2+i*blockSize, numberLabelsY[i])
}

draw_set_halign(fa_center)
if gridComplete{
	completeTextSize = clamp(completeTextSize+completeTextSizeIncrease, 0, completeTextSizeMax)

	draw_text_transformed(room_width/2, room_height/2, "Grid Complete!!!", 
						  completeTextSize, completeTextSize, sin(current_time))
}