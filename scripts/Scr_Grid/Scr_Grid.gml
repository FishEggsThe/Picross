function GenerateGrid(){
	// Grid Creation
	for(var i = 0; i < rows; i++){
		var numbers = ""
		for(var j = 0; j < columns; j++){
			var xOffset = j*blockSize
			var yOffset = i*blockSize
			grid[i][j] = CreateBlock(x+xOffset, y+yOffset, choose(true, false), c_black)
			numbers += string(grid[i][j].blockData.desiredState)
		}
	
		numberLabels[i] = numbers
	}

	// Y Labels
	for(var i = 0; i < rows; i++){
		var numList = string_split(numberLabels[i], "0")
		for(var j = 0; j < array_length(numList); j++){
			if string_length(numList[j]) > 0
				numberLabelsY[i] += (" " + string(string_length(numList[j])))
		}
	}

	// X Labels
	for(var i = 0; i < columns; i++){
		var numbers = "";
		for(var j = 0; j < rows; j++){
			numbers += string(string_copy(numberLabels[j], i+1, 1))
		}
	
		var numList = string_split(numbers, "0")
		for(var j = 0; j < array_length(numList); j++){
			if string_length(numList[j]) > 0
				numberLabelsX[i] += (string(string_length(numList[j])) + "\n")
		}
	}
}