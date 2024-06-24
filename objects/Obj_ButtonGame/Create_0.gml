event_inherited()

roomID = 1
buttonText = "Start\nGame"
rowSize = 10
columnSize = 10
theGrid = noone

button_do = function() {
	theGrid = array_create_ext(rowSize, function() {
		return array_create(columnSize, [noone, c_white])
	})
	for (var i = 0; i < rowSize; i++) {
		for (var j = 0; j < columnSize; j++)
			theGrid[i][j][0] = choose(true, false)
	}	
			
	SetGrid(rowSize, columnSize, theGrid)
	room_goto(roomID)
}