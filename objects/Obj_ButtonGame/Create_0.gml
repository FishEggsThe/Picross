event_inherited()

roomID = 1
buttonText = "Start\nGame"
rowSize = 10
columnSize = 10

button_do = function() {
	SetGridSize(rowSize, columnSize)
	room_goto(roomID)
}