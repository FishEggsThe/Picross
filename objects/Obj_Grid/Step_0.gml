gridComplete = true
for (var i = 0; i < rows; i++) {
	for (var j = 0; j < columns; j++) {
		if grid[i][j].blockData.state != grid[i][j].blockData.desiredState
			gridComplete = false
	}
}

