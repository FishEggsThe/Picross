event_inherited()

roomID = 2
buttonText = "Create\nGrid"
rowSize = 15
columnSize = 10

button_do = function() {
	SetGrid(rowSize, columnSize)
	room_goto(roomID)
}