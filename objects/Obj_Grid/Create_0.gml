rows = 5
columns = 5
blockSize = Obj_Block.sprite_width

grid = array_create(rows, array_create(columns, noone))

for(var i = 0; i < rows; i++){
	for(var j = 0; j < columns; j++){
		var xOffset = i*blockSize
		var yOffset = j*blockSize
		grid[i][j] = CreateBlock(x+xOffset, y+yOffset, choose(true, false), c_black)
	}
}