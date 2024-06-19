rows = 5
columns = 5
blockSize = Obj_Block.sprite_width
numberLabels = array_create(rows, "")
numberLabelsX = array_create(rows, "")
numberLabelsY = array_create(columns, "")



grid = array_create(rows, array_create(columns, noone))

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
	show_debug_message(numberLabels[i])
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
	show_debug_message(nums)
	
	var numList = string_split(nums, "0")
	for(var k = 0; k < array_length(numList); k++){
		if string_length(numList[k]) > 0
			numberLabelsX[i] += (string(string_length(numList[k])) + "\n")
	}
}