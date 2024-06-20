draw_set_halign(fa_right)
for(var i = 0; i < rows; i++){
	draw_text(x-blockSize/2, y+blockSize/2+i*blockSize, numberLabelsY[i])
}

draw_set_halign(fa_center)
for(var i = 0; i < columns; i++){
	draw_text(x+blockSize/2+i*blockSize, y-blockSize/2-string_height(numberLabelsX[i]), numberLabelsX[i])
}

/*draw_set_halign(fa_left)
for (var i = 0; i < rows; i++) {
	for (var j = 0; j < columns; j++) {
		draw_text(j*50, i*50, grid[i][j].blockData.desiredState)
	}
}*/


draw_set_halign(fa_center)
if gridComplete
	draw_text_transformed(room_width/2, room_height/2, "Grid Complete!!!", 5, 5, sin(current_time))