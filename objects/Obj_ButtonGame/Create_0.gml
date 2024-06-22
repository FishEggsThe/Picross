event_inherited()

roomID = 1
buttonText = "Start\nGame"
rowSize = 5
columnSize = 5

goto_room = function(r) {
	SetGridSize(rowSize, columnSize)
	room_goto(r)
}