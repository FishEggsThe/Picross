event_inherited()

roomID = 2
buttonText = "Create\nGrid"
rowSize = 5
columnSize = 5

goto_room = function(r) {
	SetGridSize(rowSize, columnSize)
	room_goto(r)
}