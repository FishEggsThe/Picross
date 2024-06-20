if instance_number(Obj_Grid) > 1 {
	show_message("Why are there two grids at a time")
	instance_destroy()
}

rows = 5
columns = 5
blockSize = sprite_width
/*x = blockSize; y = blockSize
room_width = (columns+2)*blockSize
room_height = (rows+2)*blockSize*/

numberLabels = array_create(rows, "")
numberLabelsX = array_create(columns, "")
numberLabelsY = array_create(rows, "")

gridComplete = false
completeTextSize = 0
completeTextSizeMax = 5
completeTextSizeIncrease = 0.05


// Grid Creation
grid = array_create_ext(rows, function() {
	return array_create(columns, noone)
})
GenerateGrid()
show_debug_message(numberLabels)
show_debug_message(numberLabelsX)
show_debug_message(numberLabelsY)


