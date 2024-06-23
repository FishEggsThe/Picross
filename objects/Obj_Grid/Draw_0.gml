if room == Rm_GridGame {
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
}

// Divide Grid by 5's
draw_set_color(c_navy)
for(var i = 5; i < columns; i+=5){
	draw_line_width(offset+blockSize*i, offset, offset+blockSize*i, offset+blockSize*rows, 6)
}

for(var i = 5; i < rows; i+=5){
	draw_line_width(offset, offset+blockSize*i, offset+blockSize*columns, offset+blockSize*i, 6)
}

// Selected Block
draw_set_color(c_red)
if !gridComplete {
	var lw = 2
	for(var i = 0; i < 2; i++) {
		// X
		draw_line_width(gridLinesX+blockSize*i, offset-blockSize, gridLinesX+blockSize*i, offset+blockSize*rows, lw)
		// Y
		draw_line_width(offset-blockSize, gridLinesY+blockSize*i, offset+blockSize*columns, gridLinesY+blockSize*i, lw)
	}
}
else {
	ResetGridLines()
}