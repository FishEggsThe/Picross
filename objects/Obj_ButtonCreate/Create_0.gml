event_inherited()

roomID = 2
buttonText = "Create\nGrid"
rowSize = 5
columnSize = 5

button_do = function() {
	SetGridSize(rowSize, columnSize)
	room_goto(roomID)
}