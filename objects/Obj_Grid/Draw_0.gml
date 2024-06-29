if room == Rm_GridGame {
	// Top Number Labels
	draw_set_color(c_black)
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
}

// Divide Grid by 5's
if !colorMode {
	draw_set_color(c_navy)
	for(var i = 5; i < columns; i+=5){
		draw_line_width(x+blockSize*i, y, x+blockSize*i, y+blockSize*rows, 6)
	}

	for(var i = 5; i < rows; i+=5){
		draw_line_width(x, y+blockSize*i, x+blockSize*columns, y+blockSize*i, 6)
	}
}

// Selected Block
if !gridComplete {
	draw_set_color(c_red)
	var lw = 2
	for(var i = 0; i < 2; i++) {
		var vExtend = string_height(numberLabelsX[numLabXIndex])
		var hExtend = string_length(numberLabelsY[numLabYIndex])*10
		//floor((mouse_x-x)/columns)
		//floor((mouse_y-y)/rows)
		
		// Vertical Lines
		draw_line_width(gridLinesX+blockSize*i, x-vExtend, gridLinesX+blockSize*i, x+blockSize*rows, lw)
		// Horizontal Lines
		draw_line_width(y-hExtend, gridLinesY+blockSize*i, y+blockSize*columns, gridLinesY+blockSize*i, lw)
	}
}
else {
	ResetGridLines()
}