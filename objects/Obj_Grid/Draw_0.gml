draw_set_halign(fa_left)

for(var i = 0; i < rows; i++){
	var numbersLabel = ""
	var blockLength = 0
	
	for(var j = 0; j < columns; j++){
		numbersLabel += string(grid[i][j].blockData.desiredState)
		/*if grid[i][j].blockData.desiredState
			blockLength++
		else if blockLength > 0{
			numbersLabel += (" " + string(blockLength))
			blockLength = 0
		}*/
	}
	draw_text(x-blockSize/2, y+blockSize/2+i*blockSize, numbersLabel)
}