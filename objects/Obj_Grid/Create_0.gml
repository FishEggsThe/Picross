if instance_number(Obj_Grid) > 1 {
	show_message("Why are there two grids at a time")
	instance_destroy()
}

rows = 5
columns = 5
blockSize = sprite_width
x = 2.75*blockSize; y = 2.75*blockSize
room_width = (columns+4)*blockSize
room_height = (rows+4)*blockSize
depth = -10

numberLabels = array_create(rows, "")
numberLabelsX = array_create(columns, "")
numberLabelsY = array_create(rows, "")

gridComplete = false
completeTextSize = 0
completeTextSizeMax = 2.5*(columns/5)
completeTextSizeIncrease = 0.025*(columns/5)


// Grid Creation
grid = array_create_ext(rows, function() {
	return array_create(columns, noone) // Wasn't recognizing variable here in script for whatever reason so back here it goes
})
GenerateGrid(rows, columns, blockSize)
show_debug_message(numberLabels)
show_debug_message(numberLabelsX)
show_debug_message(numberLabelsY)


