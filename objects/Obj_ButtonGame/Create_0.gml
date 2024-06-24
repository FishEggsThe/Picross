event_inherited()

roomID = 1
buttonText = "Start\nGame"
//rowSize = 10
//columnSize = 10
code = "5&5&11111100111111000011001100001100111100110011111100"

button_do = function() {
	if TranslateGridCode(code) == 1
		room_goto(roomID)
}