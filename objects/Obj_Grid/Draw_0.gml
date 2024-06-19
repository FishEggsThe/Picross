for(var i = 0; i < rows; i++){
	for(var j = 0; j < columns; j++){
		//draw_set_colour(grid[i][i].blockColor)
		draw_set_colour(c_black)
		draw_rectangle(i*10, j*10, (i*10)+10, (j*10)+10, false)
	}
}

//draw_text(x, y, block.desiredState)
//draw_text(x, y+24, block.blockColor)
