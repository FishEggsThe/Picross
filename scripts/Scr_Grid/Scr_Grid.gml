function ResetGridLines()
{
	gridLinesX = -100000
	gridLinesY = -100000
}

function GenerateGrid(r, c){
	// Grid Creation
	for(var i = 0; i < r; i++){
		var numbers = ""
		for(var j = 0; j < c; j++){
			var xOffset = j*blockSize
			var yOffset = i*blockSize
			grid[i][j] = CreateBlock(x+xOffset, y+yOffset, choose(true, false), c_black, true)
			numbers += string(grid[i][j].blockData.desiredState)
		}
	
		numberLabels[i] = numbers
	}

	// Y Labels
	for(var i = 0; i < r; i++){
		var numList = string_split(numberLabels[i], "0")
		for(var j = 0; j < array_length(numList); j++){
			if string_length(numList[j]) > 0
				numberLabelsY[i] += (" " + string(string_length(numList[j])))
		}
		if numberLabelsY[i] = ""
			numberLabelsY[i] = "0"
	}

	// X Labels
	for(var i = 0; i < c; i++){
		var numbers = "";
		for(var j = 0; j < r; j++){
			numbers += string(string_copy(numberLabels[j], i+1, 1))
		}
	
		var numList = string_split(numbers, "0")
		for(var j = 0; j < array_length(numList); j++){
			if string_length(numList[j]) > 0
				numberLabelsX[i] += (string(string_length(numList[j])) + "\n")
		}
		if numberLabelsY[i] = ""
			numberLabelsY[i] = "0"
	}
	
	with instance_create_layer(x, y, "Instances", Obj_GridFrame) {
		width = c
		height = r
	}
}