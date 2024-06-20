gridComplete = true
for (var i = 0; i < rows; i++) {
	for (var j = 0; j < columns; j++) {
		
		if grid[i][j].blockData.desiredState
			if grid[i][j].blockData.state != 1
				gridComplete = false
				
		else if !grid[i][j].blockData.desiredState
			if grid[i][j].blockData.state == 1
				gridComplete = false
	}
}
