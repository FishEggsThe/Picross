event_inherited()

roomID = 1
buttonText = "Start\nGame"
rowSize = 10
columnSize = 10
theGrid = noone

button_do = function() {
	SetGrid(rowSize, columnSize)
	room_goto(roomID)
}