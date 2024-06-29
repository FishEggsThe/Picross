function ResetGridLines()
{
	gridLinesX = -100000
	gridLinesY = -100000
}

function SetBlockColors(colorState)
{
	with Obj_Block
		blockData.ChangeColorState(colorState)
}

function GenerateGrid(r, c){
	// Grid Creation
	for(var i = 0; i < r; i++){
		var numbers = ""
		for(var j = 0; j < c; j++){
			var xOffset = j*blockSize
			var yOffset = i*blockSize
			if room == Rm_GridCreate
				grid[i][j] = CreateBlock(x+xOffset, y+yOffset, false, 1)
			else
				grid[i][j] = CreateBlock(x+xOffset, y+yOffset, gridInfo[i][j].desiredState, gridInfo[i][j].blockColorI)

			
			//grid[i][j] = CreateBlock(x+xOffset, y+yOffset, gridInfo[i][j][0], gridInfo[i][j][1])
			numbers += string(grid[i][j].blockData.desiredState)
		}
	
		numberLabels[i] = numbers
	}

	// Y Labels
	for(var i = 0; i < r; i++){
		if string_pos("1", numberLabels[i]) == 0 {
			numberLabelsY[i] = "0"
		} else {
			var numList = string_split(numberLabels[i], "0")
			for(var j = 0; j < array_length(numList); j++){
				if string_length(numList[j]) > 0
					numberLabelsY[i] += (" " + string(string_length(numList[j])))
			}
		}
	}

	// X Labels
	for(var i = 0; i < c; i++){
		var numbers = "";
		for(var j = 0; j < r; j++){
			numbers += string(string_copy(numberLabels[j], i+1, 1))
		}
		
		if string_pos("1", numbers) == 0 {
			numberLabelsX[i] = "0"
		} else {
			var numList = string_split(numbers, "0")
			for(var j = 0; j < array_length(numList); j++){
				if string_length(numList[j]) > 0
					numberLabelsX[i] += (string(string_length(numList[j])) + "\n")
			}
		}
	}
	
	instance_create_layer(x, y, "Instances", Obj_GridFrame)
}