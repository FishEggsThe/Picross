draw_set_halign(fa_right)
for(var i = 0; i < rows; i++){
	draw_text(x-blockSize/2, y+blockSize/2+i*blockSize, numberLabelsY[i])
}


show_debug_message("Hello?")

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

show_debug_message("Is anyone there?")

draw_set_halign(fa_center)
if gridComplete{
	completeTextSize = clamp(completeTextSize+completeTextSizeIncrease, 0, completeTextSizeMax)

	draw_text_transformed(room_width/2, room_height/2, "Grid Complete!!!", 
						  completeTextSize, completeTextSize, sin(current_time))
}
show_debug_message("it's cold...")