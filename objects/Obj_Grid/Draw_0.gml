draw_set_halign(fa_right)
for(var i = 0; i < rows; i++){
	draw_text(x-blockSize/2, y+blockSize/2+i*blockSize, numberLabelsY[i])
}

draw_set_halign(fa_center)
for(var i = 0; i < columns; i++){
	draw_text(x+blockSize/2+i*blockSize, y-blockSize/2-string_height(numberLabelsX[i]), numberLabelsX[i])
}


