event_inherited()

roomID = 1
buttonText = "Start\nGame"
rowSize = 10
columnSize = 10

goto_room = function(r) {
	SetGridSize(rowSize, columnSize)
	room_goto(r)
}