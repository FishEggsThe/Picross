// Top Number Labels
draw_set_color(c_red)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
for(var i = 0; i < columns; i++){
	draw_text(x+blockSize/2+i*blockSize, y-10-string_height(numberLabelsX[i]), numberLabelsX[i])
}

// Side Number Labels
draw_set_valign(fa_middle)
draw_set_halign(fa_right)
for(var i = 0; i < rows; i++){
	draw_text(x-15, y+blockSize/2+i*blockSize, numberLabelsY[i])
}

// Selected Block
if !gridComplete
	for(var i = 0; i < 2; i++) {
		// X
		draw_line_width(gridLinesX+blockSize*i, offset-blockSize, gridLinesX+blockSize*i, offset+blockSize*rows, 6)
		// Y
		draw_line_width(offset-blockSize, gridLinesY+blockSize*i, offset+blockSize*columns, gridLinesY+blockSize*i, 6)
	}
else {
	ResetGridLines()
}
	

// Grid Complete Text
draw_set_halign(fa_center)
if gridComplete{
	completeTextSize = clamp(completeTextSize+completeTextSizeIncrease, 0, completeTextSizeMax)

	draw_text_transformed(room_width/2, room_height/2, "Grid Complete!!!", 
						  completeTextSize, completeTextSize, sin(current_time))
}