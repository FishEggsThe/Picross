if instance_number(Obj_Grid) > 1
	show_message("Why are there two grids at a time")

rows = 5
columns = 5
blockSize = sprite_width
numberLabels = array_create(rows, "")
numberLabelsX = array_create(columns, "")
numberLabelsY = array_create(rows, "")

gridComplete = false
completeTextSize = 0
completeTextSizeMax = 5
completeTextSizeIncrease = 0.05


// Grid Creation
GenerateGrid()

