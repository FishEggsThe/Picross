if instance_number(Obj_Grid) > 1 {
	show_message("Why are there two grids at a time")
	instance_destroy()
}

rows = Obj_Control.rowNum
columns = Obj_Control.columnNum
roomSize = (rows >= columns ? rows : columns)
blockSize = sprite_width
offset = 3*blockSize
x = offset; y = offset
room_width = (roomSize+4)*blockSize
room_height = (roomSize+4)*blockSize
depth = -10

numberLabels = array_create(rows, "")
numberLabelsX = array_create(columns, "")
numberLabelsY = array_create(rows, "")

gridComplete = false
completeTextSize = 0
completeTextSizeMax = 2.5*(columns/5)
completeTextSizeIncrease = 0.025*(columns/5)
gridLinesX = -100000
gridLinesY = -100000


// Grid Creation
grid = array_create_ext(rows, function() {
	return array_create(columns, noone) // Wasn't recognizing variable here in script for whatever reason so back here it goes
})
GenerateGrid(rows, columns)
show_debug_message(numberLabels)
show_debug_message(numberLabelsX)
show_debug_message(numberLabelsY)


