event_inherited()

image_xscale = 1
image_yscale = 1

gridSize = 5
buttonText = string(gridSize)
rowOrColumn = true
creator = noone

button_do = function(add)
{
	gridSize = clamp(gridSize+add, 5, 25)
	if rowOrColumn
		creator.rowSize = gridSize
	else
		creator.columnSize = gridSize
	buttonText = string(gridSize)
}