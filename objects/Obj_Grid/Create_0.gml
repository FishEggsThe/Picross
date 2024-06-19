rows = 5
columns = 5
blockSize = sprite_width
numberLabels = array_create(rows, "")
numberLabelsX = array_create(rows, "")
numberLabelsY = array_create(columns, "")

gridComplete = false


grid = array_create_ext(rows, function() {
  return array_create(columns, noone)
})

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
	//show_debug_message(numberLabels[i])
	for (var a = 0; a < i+1; a++) {
		var test = ""
		for (var b = 0; b < columns; b++) {
			test += string(grid[a][b].blockData.desiredState)
		}
		show_debug_message(test)
	}
	show_debug_message("")
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
	var nums = "";
	for(var j = 0; j < rows; j++){
		nums += string(string_copy(numberLabels[j], i+1, 1))
	}
	
	var numList = string_split(nums, "0")
	for(var k = 0; k < array_length(numList); k++){
		if string_length(numList[k]) > 0
			numberLabelsX[i] += (string(string_length(numList[k])) + "\n")
	}
}