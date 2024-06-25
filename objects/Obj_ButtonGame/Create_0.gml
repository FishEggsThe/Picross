event_inherited()

roomID = 1
buttonText = "Start\nGame"
//rowSize = 10
//columnSize = 10
//code = "5&5&11111100111111000011001100001100111100110011111100"
//code = "5&5&10101001101010010110011001011001101001100110101001"
code = "5&5&11150105010111110101010511050101050505010101010101"

button_do = function() {
	if TranslateGridCode(code) == 1
		room_goto(roomID)
}